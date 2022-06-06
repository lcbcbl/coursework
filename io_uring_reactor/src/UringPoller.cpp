#include <errno.h>
#include <unistd.h>
#include <cstring>

#include "UringPoller.hpp"
#include "Logger.hpp"
#include "Channel.hpp"

const int k_new = -1;
const int k_added = 1;
const int k_deleted = 2;

UringPoller::UringPoller(EventLoop *loop): Poller(loop) 
{
    memset(&params_, 0, sizeof(params_));
    if (io_uring_queue_init_params(128, &ring_, &params_) < 0)
    {
        perror("io_uring_init_failed...\n");
        exit(1);
    }
    if (!(params_.features & IORING_FEAT_FAST_POLL))
    {
        printf("IORING_FEAT_FAST_POLL not available in the kernel, quiting...\n");
        exit(0);
    }
	conns = (conn_info*)calloc(sizeof(conn_info), 65536);
   
}

UringPoller::~UringPoller()
{}

void UringPoller::update_channel(Channel *channel){}
void UringPoller::remove_channel(Channel *channel){}

TimeStamp UringPoller::poll(int timeout, ChannelList *active_channels)
{
    count++;
    int ret = io_uring_submit_and_wait(&ring_, 0); //提交sq的entry，阻塞等到其完成，最小完成1个时返回
    if (ret < 0) {
        printf("Returned from io is %d\n", errno);
        perror("Error io_uring_submit_and_wait\n");
        LOG_ERROR("%s", "io_uring failure");
        exit(1);
    }
    //将准备好的队列填充到cqes中，并返回已准备好的数目，收割cqe
    int cqe_count = io_uring_peek_batch_cqe(&ring_, cqes_, sizeof(cqes_) / sizeof(cqes_[0]));
    TimeStamp now(TimeStamp::now());
    if (cqe_count > 0)
    {
        LOG_INFO("%d events happened \n", cqe_count);
        fill_active_channels(cqe_count, active_channels);
    }
    //返回发生事件时间点
    return now;
}

//填写活跃的链接
void UringPoller::fill_active_channels(int cqu_count, ChannelList *active_channels) 
{
    LOG_INFO("fill_active_channels called\n");
    for (int i = 0; i < cqu_count; i++)
    {
        struct io_uring_cqe* cqe = cqes_[i];
        conn_info* user_data = (conn_info*)io_uring_cqe_get_data(cqe);
        LOG_INFO("user_data: fd = %d\n", user_data->fd);

        Channel *channel = user_data->channel;
        channel->set_revent(user_data->event);
        if(user_data->event == ACCEPT){
            channel->set_event_res(cqe->res);
        }
        
        active_channels->push_back(channel); // eventloop得到poller给他返回的所有发生事件的channel列表
        LOG_INFO("active_channels push backed!");
        io_uring_cqe_seen(const_cast <io_uring*>(&ring_), cqe);

        // 对于读时间 再次提交监听请求
        if(user_data->event == READ){
            add_socket_read(channel, 1337, 0, 0);
        }
    }
}


void UringPoller::add_accept(Channel* channel, struct sockaddr *client_addr, socklen_t *client_len, unsigned flags)
{
    int fd = channel->get_fd();
    conn_info *conn_i = &conns[fd];
    struct io_uring_sqe *sqe = io_uring_get_sqe(&ring_);
    io_uring_prep_accept(sqe, fd, client_addr, client_len, 0);
    io_uring_sqe_set_flags(sqe, flags);

    conn_i->fd = fd;
	conn_i->event = ACCEPT;
    conn_i->channel = channel;
	io_uring_sqe_set_data(sqe, conn_i);     //相当于 memcpy(&sqe->user_data, &conn_i, sizeof(conn_i));
}

void UringPoller::add_socket_read(Channel* channel, unsigned gid, size_t message_size, unsigned flags) {
    int fd = channel->get_fd();
    conn_info *conn_i = &conns[fd];
    printf("add_socket_read:fd = %d\n",fd);
    struct io_uring_sqe *sqe = io_uring_get_sqe(&ring_);
    io_uring_prep_recv(sqe, fd, NULL, 0, 0);
    io_uring_sqe_set_flags(sqe, flags);
    sqe->buf_group = gid;

    conn_i->fd = fd;
	conn_i->event = READ;
    conn_i->channel = channel;
	io_uring_sqe_set_data(sqe, conn_i);
}

void UringPoller::add_socket_write(Channel* channel, unsigned flags, const string &buf) {
    int fd = channel->get_fd();
    conn_info *conn_i = &conns[fd];
    struct io_uring_sqe *sqe = io_uring_get_sqe(&ring_);
    io_uring_prep_send(sqe, fd,  buf.c_str(), buf.size(), 0);
    io_uring_sqe_set_flags(sqe, flags);


    conn_i->fd = fd;
	conn_i->event = WRITE;
    conn_i->channel = channel;
	io_uring_sqe_set_data(sqe, conn_i);  
}

void UringPoller::add_provide_buf(__u16 bid, unsigned gid) {
    struct io_uring_sqe *sqe = io_uring_get_sqe(&ring_);
    io_uring_prep_provide_buffers(sqe, bufs_[bid], MAX_MESSAGE_LEN, 1, gid, bid);

    conn_info conn_i = {
        .fd = 0,
        .event = PROV_BUF,
    };
    memcpy(&sqe->user_data, &conn_i, sizeof(conn_i));
}

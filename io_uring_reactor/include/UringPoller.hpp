#include <sys/epoll.h>
#include <vector>
#include "Poller.hpp"
#include <liburing.h>

// using CqeList = vector<io_uring_cqe*>;

#define MAX_CONNECTIONS     4096
#define BACKLOG             512
#define MAX_MESSAGE_LEN     2048
#define BUFFERS_COUNT       MAX_CONNECTIONS

typedef struct conn_info {
    __u32 fd;
    __u16 event;
    __u16 bid;
    Channel* channel;
} conn_info;

class UringPoller : public Poller
{
public:
    UringPoller(EventLoop *loop);
    ~UringPoller() override;

    TimeStamp poll(int timeout, ChannelList *active_channels) override;

    void update_channel(Channel *channel);
    void remove_channel(Channel *channel);

private:
    //填写活跃的链接
    void fill_active_channels(int events_num, ChannelList *active_channels) ;
    //更新channel，调用epoll_ctl
    //void update(int operation, Channel *channel);
    void add_accept(Channel* channel, struct sockaddr *client_addr, socklen_t *client_len, unsigned flags); //新链接
    void add_socket_read(Channel* channel, unsigned gid, size_t message_size, unsigned flags);
    void add_socket_write(Channel* channel, unsigned flags, const string &buf);
    void add_provide_buf(__u16 bid, unsigned gid);

private:
    static const int k_init_eventList_size_ = 16;

private:
    //int epollfd_;
    conn_info* conns;
    char bufs_[BUFFERS_COUNT][MAX_MESSAGE_LEN] = {0};
    int group_id_ = 1337;
    struct io_uring_params params_;
    struct io_uring ring_;
    struct io_uring_sqe *sqe_;
    unsigned count;
    //struct io_uring_cqe *cqe_;
    //CqeList cqes_;
    struct io_uring_cqe *cqes_[BACKLOG];
};
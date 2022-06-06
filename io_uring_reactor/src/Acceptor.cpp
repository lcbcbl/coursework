#include <sys/types.h>
#include <sys/socket.h>
#include "InetAddress.hpp"
#include "EventLoop.hpp"
#include "Acceptor.hpp"
#include "Logger.hpp"
#include "UringPoller.hpp"

static int create_nonblock_sockfd()
{
    int sockfd = socket(AF_INET, SOCK_STREAM , 0);
    // LOG_INFO("create_nonblock_sockfd() called sockfd = %d!\n", sockfd);
    if (sockfd < 0)
    {
        LOG_FATAL("%s : %s :%d listen socket create error : %d!\n", __FILE__, __FUNCTION__, __LINE__, errno);
    }
    return sockfd;
}

Acceptor::Acceptor(EventLoop *loop, const InetAddress &listenaddr, bool reuseport)
    : loop_(loop), 
    accept_socket_(create_nonblock_sockfd()), 
    accept_channel_(loop, accept_socket_.get_fd()), 
    listenning_(false)
{
    accept_socket_.set_reuseAddr(true);
    accept_socket_.set_reusePort(true);
    accept_socket_.bind_address(listenaddr);

    accept_channel_.set_acceptcallback(bind(&Acceptor::handle_read, this));
}

Acceptor::~Acceptor()
{
    accept_channel_.dis_enable_all();
    accept_channel_.remove();
}

void Acceptor::listen()
{
    LOG_INFO("Acceptor listen called!\n");
    listenning_ = true;
    accept_socket_.listen();
    //借助poller进行监听
    accept_channel_.enable_accepting();    
    // accept_channel_.enable_reading();
    // loop_->poller_->add_socket_read(&accept_channel_, 1337, 0, 0);
    
    loop_->poller_->add_accept(&accept_channel_, (sockaddr*)&client_addr, &client_addr_size, 0);
}

// void Acceptor::

//listenfd 有事件发生，即新用户连接
void Acceptor::handle_read()
{
    LOG_INFO("Acceptor handle_read called!\n");
    InetAddress peeraddr;
    peeraddr.set_sockaddr(client_addr);

    // int connfd = accept_socket_.accept(&peeraddr);
    int connfd = accept_channel_.get_event_res();
    LOG_INFO("connfd = !\n", connfd);
    if (connfd > 0)
    {
        if (new_connetion_callback_)
        {
            new_connetion_callback_(connfd, peeraddr);  // 分发当前新客户端的channel，并加入EventLoop中
        }
        else
        {
            close(connfd);
        }
    }

    else
    {
        LOG_ERROR("%s : %s :%d accept error : %d!\n", __FILE__, __FUNCTION__, __LINE__, errno);
        //进程没有可用的fd
        if (errno == EMFILE)
        {
            LOG_ERROR("%s : %s :%d sockfd reached limit error : %d!\n", __FILE__, __FUNCTION__, __LINE__, errno);
        }
    }

    //再次提交accept sqe请求
    loop_->poller_->add_accept(&accept_channel_, (sockaddr*)&client_addr, &client_addr_size, 0);

}

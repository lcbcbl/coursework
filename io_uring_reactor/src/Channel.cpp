//#include <sys/epoll.h>
#include "Channel.hpp"
#include "EventLoop.hpp"
#include "Logger.hpp"

const int Channel::k_none_event_ = 0;
const int Channel::k_accept_event_ = ACCEPT;
const int Channel::k_read_event_ = READ;
const int Channel::k_write_event_ = WRITE;


Channel::Channel(EventLoop *loop, int fd)
    : loop_(loop), fd_(fd), events_(0), real_events_(0), index_(-1), tied_(false)
{}

Channel::~Channel()
{}

//fd得到poller通知以后，根据具体发生的事件，调用相应的回调
void Channel::handle_event(TimeStamp receive_time)
{
    LOG_INFO("channel handleEvent revents:%d\n", real_events_);

    //accept事件
    if(real_events_ == ACCEPT) {
        LOG_INFO("channel handleEvent ACCEPT \n");
        if (accept_callback_){
            accept_callback_();
        }
    }

    //读事件
    if(real_events_ & READ) {
        if (read_callback_) {
            read_callback_(receive_time);
        }
    }

    //写事件
    if(real_events_ & WRITE) {
        if (write_callback_){
            write_callback_();
        }
    }
}



//与poller更新fd所感兴趣事件
void Channel::update()
{
    //通过channel所属的eventloop，调用poller的相应方法，注册fd的events事件
    loop_->update_channel(this);
}

//在channel所属的eventloop中删除自己
void Channel::remove()
{
    loop_->update_channel(this);
}

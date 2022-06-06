#include <cstdlib>
#include "Poller.hpp"
#include "UringPoller.hpp"
#include "EpollPoller.hpp"

//获取这个事件循环的poller
Poller *Poller::new_defaultPoller(EventLoop *loop,int type)
{
    if (getenv("MUDUO_USE_POLL"))
    {
        return nullptr; //poll
    }
    else if(type == 0)
    {
        //return new EpollPoller(loop); //epoll
        return new UringPoller(loop);
    } else {
        return new EpollPoller(loop);
    }
}

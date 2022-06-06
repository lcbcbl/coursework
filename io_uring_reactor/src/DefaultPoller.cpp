#include <cstdlib>
#include "Poller.hpp"
#include "UringPoller.hpp"

//获取这个事件循环的poller
Poller *Poller::new_defaultPoller(EventLoop *loop, int type)
{
    if(type == 0){
        return new UringPoller(loop);
    } else {
        //return new EpollPoller(loop); //epoll
        return nullptr;
    }
}

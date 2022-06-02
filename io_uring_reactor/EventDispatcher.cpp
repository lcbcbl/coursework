/*

    使用io_uring 作为事件分发器


    reactor介绍博客
    https://www.cnblogs.com/rainbowsea1/p/13180771.html
*/


#include "EventDispatcher.h"


using namespace io_uring_reactor;


EventDispatcher::EventDispatcher()
    :quit_(false)
    {

    }


// 使用 io_uring 获取就绪事件
void EventDispatcher::loop(){


    while (!quit_)
    {
        /* code */
    }
    
}


void EventDispatcher:: updateChannel(Channel* channel){
    
}
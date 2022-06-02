#include<iostream>
#include <vector>

namespace io_uring_reactor{

class Channel;
class Poller;

class EventDispatcher {
    public:

        EventDispatcher();
        ~EventDispatcher();


        void loop();
        void quit();

        void updateChannel(Channel* channel);
        void removeChannel(Channel* channel);



    private:

        typedef std::vector<Channel*> ChannelList;

        // bool looping_; /* atomic */
        bool quit_; /* atomic */
        // const pid_t threadId_;
        Poller *poller_;
        ChannelList activeChannels_;
};

}
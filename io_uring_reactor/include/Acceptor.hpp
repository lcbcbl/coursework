#pragma once

#include <functional>
#include "NonCopyable.hpp"
#include "Socket.hpp"
#include "Channel.hpp"

class EventLoop;
class InetAddress;

using namespace std;
using NewConnectionCallback = function<void(int sockfd, const InetAddress &address)>;

class Acceptor : NonCopyable
{
public:
    Acceptor(EventLoop *loop, const InetAddress &listenaddr, bool reuseport);
    ~Acceptor();

    void set_new_connection_callback(const NewConnectionCallback &cb)
    {
        new_connetion_callback_ = cb;
    }

    bool is_listening() { return listenning_; }

    void listen();
    Socket accept_socket_;

private:
    void handle_read();

private:
    sockaddr_in client_addr;
    socklen_t client_addr_size = sizeof(client_addr);
    
    EventLoop *loop_; //acceptor用的用户定义的那个baseloop，也就是mainloop

    Channel accept_channel_;

    NewConnectionCallback new_connetion_callback_;

    bool listenning_;
};
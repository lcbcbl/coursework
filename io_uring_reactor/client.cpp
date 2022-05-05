#include<arpa/inet.h>
#include<sys/socket.h>
#include<iostream>
#include<unistd.h>
#include<string.h>
using namespace std;

/*
socket()
connect()
write()
read()
close()
*/
const short port = 9999;
#define MAXLINE 4096

int main(int argc, char** argv){
    if(argc != 2){
        cerr<<"miss ip address"<<endl;
        return -1;
    }

    int sockfd, n;
    struct sockaddr_in serverAddr;
    char recvBuff[MAXLINE + 1];


    if((sockfd = socket(AF_INET, SOCK_STREAM, 0)) < 0){
        cerr<<"socket error"<<endl;
        return -1;
    }

    memset(&serverAddr, 0, sizeof(serverAddr));
    serverAddr.sin_family = AF_INET;
    serverAddr.sin_port  = htons(port);
    if(inet_pton(AF_INET, argv[1], &serverAddr.sin_addr) <= 0){
        cerr<<"inet_pton error for"<< argv[1]<<endl;
        return -1;
    }

    //connect  专用socket地址 sockaddr_in 要转换为通用socket地址 sockaddr
    if(connect(sockfd, (struct sockaddr *) &serverAddr, sizeof(serverAddr)) < 0){
        cerr<<"connect() error"<<endl;
        return -1;
    }

    


    // while ( (n = read(sockfd, recvBuff, MAXLINE)) > 0) {
    //     recvBuff[n] = 0; 
    //     cout << string(recvBuff) << endl;
    // }

    char wr_buff[20] = "123hhhhhh";
    
    while(string(wr_buff) != "q"){
        write(sockfd, &wr_buff, strlen(wr_buff));   
        cout <<"send: "<< string(wr_buff) << endl;

        if((n = read(sockfd, recvBuff, MAXLINE))<= 0){
            cout<<"size of receive from server <= 0"<<endl;
            break;
        }
        recvBuff[n] = 0; 
        cout <<"receive: "<< string(recvBuff) << endl;
        
        cin >> wr_buff; //input
    }   



    return 0;
}
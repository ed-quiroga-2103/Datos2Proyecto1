//
// Created by eduardo on 06/04/18.
//

#ifndef MSERVER_MSERVER_H
#define MSERVER_MSERVER_H

#include<stdio.h>
#include<string.h>
#include<sys/socket.h>
#include<arpa/inet.h>
#include<unistd.h>
#include "string"
#include "DataStructs/DataStructures.h"

using string = std::string;

class mserver {
public:
    mserver(int port, int memSize);

    short SocketCreate(void);
    int BindCreatedSocket(int hSocket);
    int runServer();

    int findVal(string tag);
    int findAdd(string add);

    void parseJson(string msg);
    void saveOnMem(string type, string val, string tag, int cmplx);
    void showInMem();
    void switchVal(string tag, string val, string type);
    void checkAll();

    string makeStream();

    void* getCurrentPtr(){return current_ptr;}
    void* getInitPtr(){ return init_ptr;}

    SingleList<void*> getAdds(){return add;}

    bool checkMem(string tag);

private:
    int memSize;
    int port;
    void* init_ptr;
    void* current_ptr;

    SingleList<string> types;
    SingleList<string> vals;
    SingleList<string> tags;
    SingleList<void*> add;
};


#endif //MSERVER_MSERVER_H

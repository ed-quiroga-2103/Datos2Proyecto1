#include<stdio.h>
#include<string.h>
#include<sys/socket.h>
#include<arpa/inet.h>
#include<unistd.h>
#include <cstdlib>
#include <iostream>
#include "mserver.h"


#include "nlohmann/json.hpp"
using json = nlohmann::json;


int main(int argc , char *argv[]){

    mserver server(90190, 1024);

    server.runServer();

    return 0;
}
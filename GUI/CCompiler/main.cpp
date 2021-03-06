#include<stdlib.h>
#include<string.h>
#include<sys/socket.h>
#include<arpa/inet.h>
#include<unistd.h>
#include<stdio.h>
#include <iostream>
#include "string"
#include "mserver_client.h"
#include "nlohmann/json.hpp"
#include "Parser.h"
#include "Compiler.h"


using json = nlohmann::json;
using string = std::string;

//main driver program
int main(int argc , char *argv[])
{

    Compiler cmp;
    Parser par;

    string code = "int c = 4;\nint f = 56;";


    std::cout << cmp.allocate(code) << endl;


    cout << cmp.pull() << endl;
    cout << endl;

    std::cout << cmp.allocate(code) << endl;


    cout << cmp.pull() << endl;

    return 0;
}
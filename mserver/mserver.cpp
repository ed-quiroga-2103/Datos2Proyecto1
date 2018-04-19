//
// Created by eduardo on 06/04/18.
//

#include <stdlib.h>
#include <iostream>
#include "mserver.h"
#include "string"
#include "nlohmann/json.hpp"
using json = nlohmann::json;
using string = std::string;

mserver::mserver(int port, int memsize) {

    this->memSize=memsize;
    this->port= port;

    init_ptr = malloc(memsize);
    current_ptr = init_ptr;


}

short mserver::SocketCreate(){

    short hSocket;
    printf("Create the socket\n");

    hSocket = socket(AF_INET, SOCK_STREAM, 0);
    return hSocket;
}

int mserver::BindCreatedSocket(int hSocket) {

    int iRetval=-1;
    int ClientPort = port;
    struct sockaddr_in  remote={0};


    remote.sin_family = AF_INET; /* Internet address family */
    remote.sin_addr.s_addr = htonl(INADDR_ANY); /* Any incoming interface */
    remote.sin_port = htons(ClientPort); /* Local port */
    iRetval = bind(hSocket,(struct sockaddr *)&remote,sizeof(remote));

    return iRetval;
}

int mserver::runServer(){
    int socket_desc , sock , clientLen , read_size;
    struct sockaddr_in server , client;
    char client_message[200]={0};
    char message[100] = {0};

    //Create socket
    socket_desc = SocketCreate();
    if (socket_desc == -1)
    {
        printf("Could not create socket");
        return 1;
    }
    printf("Socket created\n");


    //Bind
    if( BindCreatedSocket(socket_desc) < 0)
    {
        //print the error message
        perror("bind failed.");
        return 1;
    }
    printf("bind done\n");

    //Listen
    listen(socket_desc , 3);

    //Accept and incoming connection

    while(1)
    {

        printf("Waiting for incoming connections...\n");
        clientLen = sizeof(struct sockaddr_in);

        //accept connection from an incoming client
        sock = accept(socket_desc, (struct sockaddr *)&client, (socklen_t*)&clientLen);
        if (sock < 0)
        {
            perror("accept failed");
            return 1;
        }
        printf("Connection accepted\n");


        memset(client_message, '\0', sizeof client_message);
        memset(message, '\0', sizeof message);


        //Receive a reply from the client
        if( recv(sock , client_message , 200 , 0) < 0)
        {
            printf("recv failed");
            break;
        }

        printf("Client reply : %s\n",client_message);

        string str(client_message);



        if(str == "break"){
            close(sock);
            sleep(1);
            printf("Shutting server");
            break;

        }else if(str == "check"){

            checkAll();

        }else if(str == "pull"){

            std::cout << makeStream();

            string temp = makeStream();

            strcpy(message, temp.c_str());

            // Send some data
            if( send(sock , message , strlen(message) , 0) < 0)
            {
                printf("Send failed");
                return 1;
            }

        }
        else{
            close(sock);
            sleep(1);
            parseJson(str);}
    }
}

void mserver::saveOnMem(string type, string val, string tag, int cmplx) {

    if(cmplx == 0) {

        this->types.newNode(type);
        this->vals.newNode(val);
        this->tags.newNode(tag);
        this->add.newNode(current_ptr);

        if (type == "int") {

            int value = stoi(val);

            int *ptr = (int *) current_ptr;

            *ptr = value;

            current_ptr += sizeof(int);


        } else if (type == "long") {

            long value = stol(val);

            long *ptr = (long *) current_ptr;

            *ptr = value;

            current_ptr += sizeof(long);

        } else if (type == "double") {

            double value = stod(val);

            double *ptr = (double *) current_ptr;

            *ptr = value;

            current_ptr += sizeof(double);

        } else if (type == "float") {

            float value = stof(val);

            float *ptr = (float *) current_ptr;

            *ptr = value;

            current_ptr += sizeof(float);

        } else if (type == "char") {

            char *a = (char *) current_ptr;

            for (int i = 0; i < val.length(); i++) {

                *(a + i) = val[i];

            }

            current_ptr += sizeof(char) * val.length();

        }
    }else if(cmplx == 1) {
        if (type == "reference<int>") {

            int ind = findVal(val);

            int** a = (int**) current_ptr;

            *a = (int*)this->add[ind];

            this->tags.newNode(tag);
            this->types.newNode(type);
            this->add.newNode(a);

            std::stringstream nVal;
            nVal << this->add[ind];
            this->vals.newNode(nVal.str());

            current_ptr += 4;

        } else if (type == "reference<double>") {

            int ind = findVal(val);

            double** a = (double**) current_ptr;

            *a = (double*)this->add[ind];

            this->tags.newNode(tag);
            this->types.newNode(type);
            this->add.newNode(a);

            std::stringstream nVal;
            nVal << this->add[ind];
            this->vals.newNode(nVal.str());

            current_ptr += 4;

        } else if (type == "reference<long>") {


            int ind = findVal(val);

            long** a = (long**) current_ptr;

            *a = (long*)this->add[ind];

            this->tags.newNode(tag);
            this->types.newNode(type);
            this->add.newNode(a);

            std::stringstream nVal;
            nVal << this->add[ind];
            this->vals.newNode(nVal.str());

            current_ptr += 4;

        } else if (type == "reference<float>") {


            int ind = findVal(val);

            float** a = (float**) current_ptr;

            *a = (float*)this->add[ind];

            this->tags.newNode(tag);
            this->types.newNode(type);
            this->add.newNode(a);

            std::stringstream nVal;
            nVal << this->add[ind];
            this->vals.newNode(nVal.str());

            current_ptr += 4;

        } else if (type == "reference<char") {


            int ind = findVal(val);

            char** a = (char**) current_ptr;

            *a = (char*)this->add[ind];

            this->tags.newNode(tag);
            this->types.newNode(type);
            this->add.newNode(a);

            std::stringstream nVal;
            nVal << this->add[ind];
            this->vals.newNode(nVal.str());

            current_ptr += 4;


        }
    }else if(cmplx == 2){
        if (type == "int") {

            int addInd = findVal(val);

            int ind = findAdd(this->vals[addInd]);

            std::cout << ind << endl;

            int* valPtr = (int*) this->add[ind];

            int *ptr = (int *) current_ptr;

            *ptr = *valPtr;

            this->tags.newNode(tag);
            this->types.newNode(type);
            this->add.newNode(current_ptr);

            std::stringstream nVal;
            nVal << *ptr;
            this->vals.newNode(nVal.str());

            current_ptr += sizeof(int);

        }
        else if (type == "long") {

            int addInd = findVal(val);

            int ind = findAdd(this->vals[addInd]);

            std::cout << ind << endl;

            long* valPtr = (long*) this->add[ind];

            long *ptr = (long *) current_ptr;

            *ptr = *valPtr;

            this->tags.newNode(tag);
            this->types.newNode(type);
            this->add.newNode(current_ptr);

            std::stringstream nVal;
            nVal << *ptr;
            this->vals.newNode(nVal.str());

            current_ptr += sizeof(long);


    }
        else if (type == "double") {

            int addInd = findVal(val);

            int ind = findAdd(this->vals[addInd]);

            std::cout << ind << endl;

            double* valPtr = (double*) this->add[ind];

            double *ptr = (double *) current_ptr;

            *ptr = *valPtr;

            this->tags.newNode(tag);
            this->types.newNode(type);
            this->add.newNode(current_ptr);

            std::stringstream nVal;
            nVal << *ptr;
            this->vals.newNode(nVal.str());

            current_ptr += sizeof(double);


        }
        else if (type == "float") {

            int addInd = findVal(val);

            int ind = findAdd(this->vals[addInd]);

            std::cout << ind << endl;

            float* valPtr = (float*) this->add[ind];

            float *ptr = (float *) current_ptr;

            *ptr = *valPtr;

            this->tags.newNode(tag);
            this->types.newNode(type);
            this->add.newNode(current_ptr);

            std::stringstream nVal;
            nVal << *ptr;
            this->vals.newNode(nVal.str());

            current_ptr += sizeof(float);


        }else if (type == "char") {

            int addInd = findVal(val);

            int ind = findAdd(this->vals[addInd]);

            std::cout << ind << endl;

            char* valPtr = (char*) this->add[ind];

            char *ptr = (char *) current_ptr;

            *ptr = *valPtr;

            this->tags.newNode(tag);
            this->types.newNode(type);
            this->add.newNode(current_ptr);

            std::stringstream nVal;
            nVal << *ptr;
            this->vals.newNode(nVal.str());

            current_ptr += sizeof(char);


        }
    }
}

void mserver::parseJson(string msg) {

    json j = json::parse(msg);

    if(checkMem(j["tag"])){

        saveOnMem(j["type"],j["val"],j["tag"],j["cmplx"]);

    }
    else{

        switchVal(j["tag"],j["val"],j["type"]);

    }

    return;
}

void mserver::showInMem(){


    for(int i = 0; i < this->types.getLength();i++){

        std::cout << "Type: " << this->types[i] << " ";
        std::cout << "Data: " << this->vals[i] << " ";
        std::cout << "Tag: " << this->tags[i] << " ";
        std::cout << "Address: " << this->add[i] << std::endl;

    }


}

void mserver::switchVal(string tag, string val, string type) {

    for(int i = 0; i < this->tags.getLength(); i++){

        if(this->tags[i] == tag){

            this->vals.getNode(i)->setData(val);

            if(type == "int"){
                int* ptr = (int*) this->add[i];
                *ptr = stoi(val);
            }
            else if(type == "long"){
                long* ptr = (long*) this->add[i];
                *ptr = stol(val);
            }
            else if(type == "double"){
                double* ptr = (double*) this->add[i];
                *ptr = stod(val);
            }
            else if(type == "float"){
                float* ptr = (float*) this->add[i];
                *ptr = stof(val);
            }
            else if(type == "char"){
                char* ptr = (char*) this->add[i];

                if(val.length() > this->vals[i].length()){

                    perror("Length error");
                }
                else{
                    char* ptr = (char*) this->add[i];

                    for(int i = 0; i < val.length() ;i++){

                        *(ptr+i) = val[i];

                    }
                }

            }else if(type == "reference<int>"){
                //Reference value
                int ind = findVal(val);

                //Reference address
                int** a = (int**) this->add[i];

                //Switching val
                *a = (int*)this->add[ind];



                std::stringstream nVal;
                nVal << *a;
                this->vals.getNode(i)->setData(nVal.str());



            }

            break;
        }

    }
    return;
}

bool mserver::checkMem(string tag) {

    for(int i = 0; i < this->tags.getLength(); i++){

        if(this->tags[i] == tag){

            return false;

        }

    }

    return true;

}

void mserver::checkAll(){

    for(int i = 0; i < this->tags.getLength(); i++){

        std::cout << this->types[i] << " ";
        std::cout << this->tags[i] << " ";
        std::cout << this->vals[i] << " ";
        std::cout << this->add[i] << std::endl;

    }

}

string mserver::makeStream() {

    std::stringstream msg;

    for(int i = 0; i < this->tags.getLength(); i++){

        msg << this->types[i];
        msg << " ";
        msg << this->tags[i];
        msg << " ";

        if(this->types[i] == "int"){
            int* ptr = (int*) this->add[i];

            msg << *ptr;

        }
        else if(this->types[i] == "float"){
            float* ptr = (float*) this->add[i];
            msg << *ptr;
        }
        else if(this->types[i] == "long"){
            long* ptr = (long*) this->add[i];
            msg << *ptr;
        }
        else if(this->types[i] == "double"){
            double* ptr = (double*) this->add[i];
            msg << *ptr;
        }
        else if(this->types[i] == "char"){
            char* ptr = (char*) this->add[i];
            msg << *ptr;
        }
        else if(this->types[i] == "reference<int>"){
            int** ptr = (int**) this->add[i];
            msg << *ptr;
        }
        else if(this->types[i] == "reference<long>"){
            long** ptr = (long**) this->add[i];
            msg << *ptr;
        }
        else if(this->types[i] == "reference<double>"){
            double** ptr = (double**) this->add[i];
            msg << *ptr;
        }
        else if(this->types[i] == "reference<float>"){
            float** ptr = (float**) this->add[i];
            msg << *ptr;
        }
        else if(this->types[i] == "reference<char>"){
            char** ptr = (char**) this->add[i];
            msg << *ptr;
        }


        msg << " ";
        msg << this->add[i];

        msg << "\n";

    }

    return msg.str();
}

int mserver::findVal(string tag) {

    for(int i = 0; i < this->tags.getLength(); i++){

        if(this->tags[i] == tag){

            return i;

        }

    }

}

int mserver::findAdd(string add) {

    for(int i = 0; i < this->add.getLength(); i++){

        std::stringstream cmp;

        cmp << this->add[i];

        if(cmp.str()==add){

            return i;

        }


    }

}
/************************************************************
* File description: TCP implementation.						*
* the class inherit from socket. 							*
* methods of tcp socket type								*
************************************************************/

#include "Tcp.h"
#include "../Server.h"
#include "../clientDetails.h"

/***********************************************************************
* function name: Tcp												   *
* The Input: Boolean, true - if server, false if client	and port number*
* The output: none										               *
* The Function operation: creating new Tcp. initialize if server and   *
* port_num by the input												   *
***********************************************************************/
Tcp::Tcp(bool isServers, int port_num) {
    this->descriptorCommunicateClient = 0;
    this->port_number = port_num;
    this->isServer = isServers;
}

/***********************************************************************
* function name: ~Tcp												   *
* The Input: none													   *
* The output: none										               *
* The Function operation: default destructor					       *
***********************************************************************/
Tcp::~Tcp() {
    // TODO Auto-generated destructor stub
}

/***********************************************************************
* function name: initialize											   *
* The Input: none              										   *
* The output: int number representing the return status		           *
* The Function operation: initialize the Socket object by getting	   *
* socket descriptor. bind and accept for servers or connect for clients*
***********************************************************************/
int* Tcp::initialize(int c) {
    int clients[c];
    //getting a socket descriptor and check if legal
    this->socketDescriptor = socket(AF_INET, SOCK_STREAM, 0);
    if (this->socketDescriptor < 0) {
        //return an error represent error at this method
        //return ERROR_SOCKET;
    }
    //if server
    if (this->isServer) {
        //initialize the struct
        struct sockaddr_in sin;
        memset(&sin, 0, sizeof(sin));
        sin.sin_family = AF_INET;
        sin.sin_addr.s_addr = INADDR_ANY;
        sin.sin_port = htons(this->port_number);
        //bind
        if (::bind(this->socketDescriptor,
                   (struct sockaddr *) &sin, sizeof(sin)) < 0) {
            //return an error represent error at this method
            //return ERROR_BIND;
        }
        //listen
        if (listen(this->socketDescriptor, this->backLog) < 0) {
            //return an error represent error at this method
            // return ERROR_LISTEN;
        }
        //accept
        int clientSocket;
        struct sockaddr_in client_sin;
        unsigned int addr_len = sizeof(client_sin);
        int i = 0;
        for (i = 0; i < c; i++) {
            clientSocket = accept(this->socketDescriptor, (struct sockaddr *) &client_sin,
                                  &addr_len);
            cout << "SOCKET DESC: "<< clientSocket << endl;
            clients[i] = clientSocket;

        }
        return clients;
    }
       /* //while((clientSocket = accept(this->socketDescriptor, (struct sockaddr *) &client_sin,
		//		&addr_len))!=0) {
			if (clientSocket > 0) {
                pthread_t thread;
                //threads.push_back(&thread);
                //void* (*runThreadPtr)(void*);
                //runThreadPtr = &runThread;
                Server s = Server();
				clientDetails client = clientDetails(clientSocket, NULL);
				if (pthread_create(&thread, NULL, runThread, (void*)&client)
						< 0) {
					perror("could not create thread");
				}
			}
		}
        //if client
    }
        else {
        cout << "PORT: "<< port_number << endl;

        struct sockaddr_in sin;
        memset(&sin, 0, sizeof(sin));
        sin.sin_family = AF_INET;
        sin.sin_addr.s_addr = inet_addr((this->ip_address).c_str());
        sin.sin_port = htons(this->port_number);
        if (connect(this->socketDescriptor,
                    (struct sockaddr *) &sin, sizeof(sin)) < 0) {
            //return an error represent error at this method
            cout << "CONNECT? "<< ERROR_CONNECT;
            return ERROR_CONNECT;
        }
        cout << "PORT: "<< port_number << endl;

    }
    //return correct if there were no problem
    return descriptorCommunicateClient;
}
   */     }

/***********************************************************************
* function name: sendData											   *
* The Input: string data to send									   *
* The output: int number representing the return status		           *
* The Function operation: sending the required data, using his length  *
* and the socket descroptor											   *
***********************************************************************/
int Tcp::sendData(string data, int port) {
    descriptorCommunicateClient = port;
    int data_len = data.length()+1;
    const char * datas = data.c_str();
    int sent_bytes = send(this->isServer ? this->descriptorCommunicateClient
                                         : this->socketDescriptor, datas, data_len, 0);
    if (sent_bytes < 0) {
        //return an error represent error at this method
        return ERROR_SEND;
    }
    //return correct if there were no problem
    return CORRECT;
}

/***********************************************************************
* function name: recive	`											   *
* The Input: none										               *
* The output: int number representing the return status	               *
* The Function operation: getting data from the other socket to,	   *
* enter it to the buffer and print the data							   *
***********************************************************************/
int Tcp::reciveData(char* buffer, int size, int port) {
    descriptorCommunicateClient = port;
    int read_bytes = recv(this->isServer ? this->descriptorCommunicateClient
                                         : this->socketDescriptor, buffer, size, 0);
    //checking the errors
    if (read_bytes == 0) {
        return CONNECTION_CLOSED;
    }
    else if (read_bytes < 0) {
        //return an error represent error at this method
        return ERROR_RECIVE;
    } else {
        //prinrting the massege
//		cout<<buffer<<endl;
    }
    //return correct if there were no problem
    return read_bytes;
}

void Tcp::setIP(string ip) {
    ip_address = ip;
}

 void* Tcp::runThread(void* c) {
    //clientDetails* client = (clientDetails*)c;
    // Server s = Server();
    //s.assistClient(*client);
    //pthread_exit(0);
}

void Tcp::exitThreads() {

}

//
// Created by Tiki Lobel on 1/10/17.
//

#ifndef EX4_CLIENT_H
#define EX4_CLIENT_H


#include "sockets/Socket.h"
#include "Driver.h"

class clientDetails {
public:
    Driver* driver;
    int socketId;
    clientDetails(int id, Driver* d) {
        socketId = id;
        driver = d;
    }

};




#endif //EX4_CLIENT_H

#include "Driver.h"
#include "../src/sockets/Udp.h"
#include "../src/sockets/Udp.h"
#include <unistd.h>
#include <iostream>



Driver::Driver() {
    this->driverId=0;
    this->age=0;
    this->maritalStatus='c';
    this->vehicleId=0;
    this->exp=0;
}

/*Driver::Driver(int driverId, int age, char mStatus, int exp, int vehicleId, Graph* map) {
    numberOfcustomers=0;
    this->driverId=driverId;
    this->age=age;
    this->maritalStatus=mStatus;
    this->vehicleId=vehicleId;
    this->exp = exp;
    this->gps = map;
}*/

Driver::Driver(int driverId, int age, char mStatus, int exp, int vehicleId) {
    this->driverId=driverId;
    this->age=age;
    this->maritalStatus=mStatus;
    this->exp=exp;
    this->vehicleId=vehicleId;

}

/*
* using its grid, the driver uses a bfs algorithms to
* continue travelling until it arrives at its destination.
*/
Trip Driver::drive() {
    int moves = 0;
    BFS bfs = BFS(gps);
    while (moves < taxi.getType()) {
        Coordinate *start;
        int x = myTrip.getStartX();
        int y = myTrip.getStartY();
        start = new Point(x, y);
        Coordinate *end;
        x = myTrip.getEndX();
        y = myTrip.getEndY();
        end = new Point(x, y);
        Coordinate *c;
        c = bfs.getNextInPath(start, end);
        Trip *newTrip = new Trip(myTrip.getId(), c->getCoordinates()[0], c->getCoordinates()[1], myTrip.getEndX(),
                                 myTrip.getEndY(), myTrip.getNumOfPassengers(), myTrip.getTariff(), myTrip.getTripTime());
        //myTrip->updateStartPoint(c);
          delete start;
        delete end;

        myTrip = *newTrip;
        delete newTrip;
        gps->resetGraph();
        moves ++;
    }
    return myTrip;
}

int Driver::getAge() {
    return age;
}

int Driver::getDriverId() {
    return driverId;
}

double Driver::getSatisfaction() {
    return avgSatisfaction;
}

Taxi Driver::getTaxi() {
    return taxi;
}

Trip* Driver::getTrip() {
    return &myTrip;
}

/*vector<Passenger> Driver::getPassengers() {
    return myPassengers;
}*/

char Driver::getMaritalStatus() {
    return maritalStatus;
}

void Driver::setTaxi(Taxi t) {
    taxi = t;
}

void Driver::setTrip(Trip t) {
    myTrip =  Trip(t);

}

/*
* adds another rating and calculates average.
*/
void Driver::rateMe(int rating) {
    numberOfcustomers=+1;
    totalRate+=rating;
    avgSatisfaction =totalRate/numberOfcustomers;
}

/*void Driver::addPassenger(Passenger p) {
    myPassengers.push_back(p);
}*/

Driver::~Driver() {

}

int Driver::getVehicleId() {
     return vehicleId;
}

/*
 * checks if the driver arrived at its destination.
 */
bool Driver::arrived() {
    if (myTrip.getStartX() == myTrip.getEndX()) {
        if(myTrip.getStartY() == myTrip.getEndY()) {
            return true;
        }
    }
    return false;
}

/*
 * sets the drivers map
 */
void Driver::setMap(Graph* map) {
    gps = map;
}

void Driver::needNewTrip() {
    //myTrip = new Trip();
}
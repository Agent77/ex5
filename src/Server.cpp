/************************************************************
* File description: Server class  file.     				*
* Acts as server, receives clients, and controls the game
* flow of input/out, and serialization                      *
************************************************************/
#include "Server.h"
#include "StandardCab.h"
#include "LuxuryCab.h"
#include "Point.h"
#include "BFS.h"
#include "Driver.h"
#include "City.h"
#include "TaxiCenter.h"
//#include <boost/lexical_cast.hpp>
//#include <boost/tokenizer.hpp>
#include "Server.h"
#include <iostream>
#include <fstream>
#include <sstream>
#include <boost/archive/text_oarchive.hpp>
#include <boost/archive/text_iarchive.hpp>
#include <boost/tokenizer.hpp>
#include <boost/algorithm/string/predicate.hpp>
#include <boost/lexical_cast.hpp>
#include <boost/assign/list_of.hpp>
#include <boost/algorithm/string.hpp>
#include <boost/iostreams/device/back_inserter.hpp>
#include <boost/iostreams/stream.hpp>
#include <boost/archive/binary_oarchive.hpp>
#include <boost/archive/binary_iarchive.hpp>
#include "sockets/Tcp.h"

using namespace std;
int threadCommand; //global variable for sub threads to check to know next action
City city;
TaxiCenter tc;
Clock timeClock;
vector<Driver> waitingDrivers;
vector<Taxi> vehicles;
Graph* g;
Socket* tcp;
int allClientsAssisted;
int numOfClients;
void* createMainSocket(string port);

/***********************************************************************
	* function name: main										       *
	* The Input: port number										   *
	* The output: none										           *
	* The Function operation: calls neccessary functions to run server *
	***********************************************************************/
int main(int argc, char* argv[]) {
    Server s = Server();
    s.initialize();

    pthread_t mainThread;

    // MAIN THREAD CREATION
    int status = pthread_create(&mainThread, NULL, createMainSocket, (void*)argv[1]);

/*

    // INITIALIZES MAP/GRID
    server.initialize();

    string s= argv[1];
    // OPENS SOCKET FOR ONE CLIENT
    server.createClients(s);

    // RUNS SWITCH CASE
    server.run();

    return 0;*/
}


/***********************************************************************
	* function name: createClients										   *
	* The Input: string of port number													   *
	* The output: none										               *
	* The Function operation: opens a socket for the client to reach	   *
	***********************************************************************/
void* createMainSocket(void* port) {
    string* s = (string*)port;
    int portNum = stoi(*s);

    // creates tcp for connection
    tcp = new Tcp(1, portNum);

    //creates all the threads
    //tcp->initialize();
    pthread_t mainRun;
    pthread_create(&mainRun, NULL, Server::run, NULL);


}


/***********************************************************************
   * function name: run												   *
   * The Input: none												   *
   * The output: none										           *
   * The Function operation: contains switch case which runs the main
   * flow of the input and client/server interactions                  *
   ********************************************************************/
static void* Server::run(void* v) {
    int run = 1;
    char action1;
    string input;
    string s;

//Actions the user can perform
    while (run) {
        cin >> action1;
        int action = (int)action1 - 48;
        switch(action) {
            case 1: //Insert Driver
            {
                cin >> input; //how many drivers
                threadCommand = 1;
                //creating the threads given clients
                int num = stoi(input);
                numOfClients = num;
                int result = tcp->initialize(num);
                break;
            }
            case 2: {
                cin >> input;
                Trip t = city.createTrip(input);
                tc.addTrip(t);
                break;
            }
            case 3: {
                cin >> s;
                Taxi t = city.createTaxi(s);
                tc.addTaxi(t);
                vehicles.push_back(t);
                break;
            }
            case 4: {
                threadCommand = 4;
                break;
            }
            case 9:
                // ADVANCE TIME
                timeClock.increaseTime();
                threadCommand = 9;
                break;
            case 7:
                threadCommand = 7;
                //CLOSES SOCKETS
                //socket->exitThreads();
                //Server::closeSockets();
                break;
            default:
                break;
        }
    }
    pthread_exit(0);
}

void Server::assistClient(clientDetails client){
    tcp->setSocket(client.socketId); //TODO SEND ID TO SENDDATA
    //myDriver = client.driver;
    int driverId;
    while (true) {
        if(allClientsAssisted == 0) {
            assisted = false;
        }
        if (!assisted){
            switch(threadCommand){
                case 1:
                    // ASSIGNS A VEHICLE TO CLIENT ONLY IF TRIP TIME ARRIVES
                    Server::receiveDriver();
                    Server::assignVehicleToClient();
                    break;
                case 4:
                    cin >> driverId;
                    tc.requestDriverLocation(driverId);
                    break;
                case 9:
                    Server::SendTripToClient();
                    Server::sendNextLocation();
                    break;
                case 7:
                    Server::sendCommand(7);
                default:
                    break;
            }
            assisted = true;
            allClientsAssisted += 1;
            if(allClientsAssisted == numOfClients) {
                allClientsAssisted = 0;
            }
        }
    }
}
Server::Server() {
    timeClock = Clock();
    assisted=false;
}

/***********************************************************************
	* function name: closeSockets										   *
	* The Input: none													   *
	* The output: none										               *
	* The Function operation: notifies all clients to close themselves     *
	***********************************************************************/
void Server::closeSockets() {//TODO NEXT DELETE
    tc.~TaxiCenter();
    waitingDrivers.clear();
    waitingDrivers.swap(waitingDrivers);
    vehicles.clear();
    vehicles.swap(vehicles);
    //g->deleteGraph();
    delete g;
    delete socket;
}

/**************************************************************************
	* function name: initialize											   *
	* The Input: none													   *
	* The output: none										               *
	* The Function operation: initializes the grid and obstacles for the
     * game                                                                *
****************************************************************************/
void Server::initialize() {
    string obstacles;
    string size1;
    string size2;
    int obstacleCount;

    //To be used later as graph size
    cin >> size1;
    cin >> size2;
    Graph *grid = city.createGraph(size1, size2);


    //Checks for obstacles
    cin >> obstacles;
    std::istringstream(obstacles) >> obstacleCount;
    //Adds obstacles at given points in grid
    if (obstacleCount != 0) {
        string obstacle;
        for (int count = 0; count < obstacleCount; count++) {
            cin >> obstacle;
            Coordinate* c = city.createCoordinate(obstacle);
            grid->addObstacle(c);
        }
    }
    //adds grid to the taxi center
    tc = TaxiCenter(grid);
    g = grid;
}

/***********************************************************************
	* function name: SendTripToClient								       *
	* The Input: none													   *
	* The output: none										               *
	* The Function operation: Finds the correct trip according to the      *
     * current time, serializes it, and send it to the client              *
	***********************************************************************/
void Server::SendTripToClient() {
    std::string serializedTrip;
    int counter=0;
    Trip trip;

    //Finds how many trips start at the current time
    int numOfTrips=tc.checkTripTimes(timeClock.getTime());

    // SEND TRIP TO EACH CLIENT
    for (int i = 0; i < numOfTrips; i++) {
        //gets trip that starts at current time
        trip  = tc.getNextTrip(timeClock.getTime());
        //gets next driver

        //Driver d =  waitingDrivers.front();
        //erases from temporary vector of drivers without trips
        waitingDrivers.erase(waitingDrivers.begin());
        myDriver->setTrip(&trip);
        myDriver->setMap(tc.getMap());
        tc.addDriver(*myDriver);
        Trip* trip1 = &trip;
        //SERIALIZATION OF TRIP
        boost::iostreams::back_insert_device<std::string> inserter(serializedTrip);
        boost::iostreams::stream<boost::iostreams::back_insert_device<std::string> > s(inserter);
        boost::archive::binary_oarchive oa(s);
        oa << trip1;
        s.flush();
        //Notifies client that they are going to receive a trip now
        cout<<"BEFORE SENDING TRIP COMMAND"<<endl;
        Server::sendCommand(2);
        cout<<"BEFORE SENDING TRIP"<<endl;
        tcp->sendData(serializedTrip);
        cout<<"AFTER SENDING TRIP"<<endl;
    }
}



/***********************************************************************
	* function name: createString									       *
	* The Input: buffer and size of buffer													   *
	* The output: none										               *
	* The Function operation: creates a string from the buffer	           *
	***********************************************************************/
string Server::createString(char* buffer, int bufferSize) {
    std::string s(buffer, bufferSize);
    return s;
}

/***********************************************************************
	* function name: receiveDriver										   *
	* The Input: none													   *
	* The output: none										               *
	* The Function operation: waits to receive serialized version of driver
     * sent from client and adds it to a vector of temporary drivers       *
	***********************************************************************/
void Server::receiveDriver() {

    // RECEIVE DRIVER FROM CLIENT
    char buffer[1024];
    tcp->reciveData(buffer, sizeof(buffer));

    // DESERIALIZE BUFFER INTO DRIVER
    string s = createString(buffer, sizeof(buffer));
    Driver *receivedDriver;
    boost::iostreams::basic_array_source<char> device(s.c_str(), s.size());
    boost::iostreams::stream<boost::iostreams::basic_array_source<char> > s2(device);
    boost::archive::binary_iarchive ia(s2);
    ia >> receivedDriver;
    //adds received driver to temp vector of drivers, until it is assigned a trip
    waitingDrivers.push_back(*receivedDriver);
    myDriver = receivedDriver;
    //delete receivedDriver;
}

/***********************************************************************
   * function name: sendCommand										   *
   * The Input: int													   *
   * The output: none										               *
   * The Function operation: serializes and sends a command to client
    * Sends a number, depending on whether it wants the client to wait for
    * a trip, a new location, or a vehicle, or to close itself            *
   ***********************************************************************/
void Server::sendCommand(int command) {

    // SERIALIZATION OF COMMAND
    std::string commandString;
    boost::iostreams::back_insert_device<std::string> inserter(commandString);
    boost::iostreams::stream<boost::iostreams::back_insert_device<std::string> > s1(inserter);
    boost::archive::binary_oarchive oa(s1);
    oa << command;
    s1.flush();
    socket->sendData(commandString);
}

/***********************************************************************
	* function name: sendNextLocation									   *
	* The Input: none													   *
	* The output: none										               *
	* The Function operation: drives the drivers, gets its next location,
     * serializes the point and sends it to client                         *
	***********************************************************************/
void Server::sendNextLocation() {

    int x = 0;
    int y = 0;
    if(tc.getDrivers().size() > 0) {
        //Drives all drivers and sends next locations to clients
        for(int i=0; i<tc.getDrivers().size() && tc.getDrivers()[i].getTrip()->getTripTime()<timeClock.getTime(); i++) {
            //Trip t = tc.getDrivers()[i].drive();
           // tc.updateDriverTrip(t, i);
           // x = t.getStartX();
           // y = t.getStartY();

            Point* ptrPoint =  myDriver->getTrip().getNextInPath();

            std::string nextLocation;
            boost::iostreams::back_insert_device<std::string> inserter(nextLocation);
            boost::iostreams::stream<boost::iostreams::back_insert_device<std::string> > s1(inserter);
            boost::archive::binary_oarchive oa(s1);
            oa << ptrPoint;
            s1.flush();
            //notifies clients they are about to receive a new location
            cout<<"BEFORE SENDING NP COMMAND"<<endl;
            Server::sendCommand(9);
            cout<<"BEFORE SENDING NP"<<endl;
            tcp->sendData(nextLocation);
            delete ptrPoint;
            //need to assign driver a new trip
            if(myDriver->arrived()) {
                //re-adds driver to waiting drivers
                //waitingDrivers.push_back(tc.getDrivers()[i]);
                //delets drivers without trips from taxi center
                //tc.deleteDriver(i);
                Server::SendTripToClient(); //TODO MUTEX
            }
        }
    }
}

/***********************************************************************
	* function name: assignVehicleToClient												   *
	* The Input: none													   *
	* The output: none										               *
	* The Function operation: finds the right vehicle depending on driver
     * id, serializes it, and sends it to the client                       *
	***********************************************************************/
void Server::assignVehicleToClient() {
    int counter = 0;
    vector<Taxi>::iterator taxiIter = vehicles.begin();
    int len = vehicles.size();
    int id = waitingDrivers.front().getDriverId();

    // FINDS CORRECT TAXI FOR DRIVER ID
    while (counter<len && vehicles[counter].getId()!= id){
        taxiIter++;
        counter++;
    }
    //sets taxi to driver with matching id, who still doesnt have a trip
    Taxi t = vehicles[counter];
    waitingDrivers[counter].setTaxi(t);

    Taxi* taxiPointer = &(vehicles[counter]);
    // SERIALIZATION OF TAXI
    std::string serial_str;
    boost::iostreams::back_insert_device<std::string> inserter(serial_str);
    boost::iostreams::stream<boost::iostreams::back_insert_device<std::string> > s1(inserter);
    boost::archive::binary_oarchive oa(s1);
    oa << taxiPointer;
    s1.flush();
    // RETURN TAXI TO CLIENT
    socket->sendData(serial_str);
    //once taxi has been assigned to a driver, it can be deleted from vehicle vector
    vehicles.erase(vehicles.begin() + counter);

}





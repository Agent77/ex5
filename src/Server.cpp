/************************************************************
* File description: Server class  file.     				*
* Acts as server, receives clients, and controls the game
* flow of input/out, and serialization                      *
************************************************************/
#include "Server.h"
#include "StandardCab.h"
#include "LuxuryCab.h"

#include "BFS.h"
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
#include "waitingPoint.h"

using namespace std;
static void* assist(void* s);
static void* acceptClients(void* v);
pthread_mutex_t mutex1;
bool commandCompleted;
int threadCommand; //global variable for sub threads to check to know next action
City city;
TaxiCenter tc;
Clock timeClock;
vector<Driver> waitingDrivers;
vector<Taxi> vehicles;
Graph* g;
Socket* tcp;
int rank;
int allClientsAssisted;
int numOfClients;
vector<waitingPoint> landmarks;
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

    //pthread_t mainThread;

    // MAIN THREAD CREATION
   // int status = pthread_create(&mainThread, NULL, createMainSocket, (void*)argv[1]);
    //string* s = (string*)port;
    int portNum = stoi(argv[1]);

    // creates tcp for connection
    tcp = new Tcp(1, portNum);

    //creates all the threads
    //tcp->initialize();
    pthread_t mainRun;
    pthread_create(&mainRun, NULL, acceptClients, (void*)1);
    pthread_join(mainRun,(void**)1);

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
    pthread_create(&mainRun, NULL, acceptClients, NULL);
    //pthread_join(mainRun,(void**)1);


}


/***********************************************************************
   * function name: run												   *
   * The Input: none												   *
   * The output: none										           *
   * The Function operation: contains switch case which runs the main
   * flow of the input and client/server interactions                  *
   ********************************************************************/
static void* acceptClients(void* dummy) {
    cout << "** ACCEPT CLIENTS **"<< endl;
    //Server* server = (Server*)s;
    bool run = true;
    char action1;
    string input;
    string s;

//Actions the user can perform
    while (run) {
        cout << "** IN WHILE OF ACCEPT CLIENTS **"<<endl;
        commandCompleted = false;
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
                int clientSockets = tcp->initialize(num);
                int i;
                for(i = 0; i < numOfClients; i++) {
                    cout<< "** IN LOOP TO CREATE THREADS ** "<<endl;
                    pthread_t* thread = new pthread_t();
                    Server* tempServer = new Server();
                    tempServer->setRank(i);
                    int socket = tcp->acceptClient();
                    tempServer->setSocket(socket);
                    pthread_create(thread, NULL, assist, (void*)tempServer);
                }
                break;
            }
            case 2: {
                cin >> input;
                //threadCommand = 2;
                Trip t = city.createTrip(input);
                Point p = Point(t.getEndX(), t.getEndY());
                waitingPoint w = waitingPoint(p);
                landmarks.push_back(w);
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
              //  threadCommand = 4;
                int id;
                cin >> id;
                tc.requestDriverLocation(id);
                break;
            }
            case 9:
                // ADVANCE TIME
                timeClock.increaseTime();
                threadCommand = 9;
                break;
            case 7:
                threadCommand = 7;
                run = false;
                //CLOSES SOCKETS
                //socket->exitThreads();
                //Server::closeSockets();
                break;
            default:
                break;
        }
        //while(allClientsAssisted < numOfClients) {
        //    continue;
        //}
       // commandCompleted = true;
    }
    pthread_exit(0);
}

 void* assist(void* s) {
     cout << "** ASSIST **"<<endl;
     bool run = true;
    Server* server = (Server*)s;
    int missionTime = -1;
     int driverId;

    while (run) {

        if(allClientsAssisted == 0) {
            server->assisted = false;
        }

      //  if (!server->assisted) {
            switch(threadCommand) {
                case 1:
                    // ASSIGNS A VEHICLE TO CLIENT ONLY IF TRIP TIME ARRIVES
                    if(missionTime < 0) {
                        server->receiveDriver();

                        server->assignVehicleToClient();
                        missionTime++;
                    }
                    break;
                case 9:
                    if(missionTime != timeClock.getTime()) {
                        cout << "TIME: "<<timeClock.getTime() << endl;
                        cout << "SOCKET: "<<server->socketNum()<<endl;
                        server->SendTripToClient();
                        server->sendNextLocation();
                        missionTime = timeClock.getTime();
                    }
                    break;
                case 7:
                    run = false;
                    server->sendCommand(7);
                default:
                    break;
            }
            server->assisted = true;
            allClientsAssisted += 1;
            if(allClientsAssisted == numOfClients) {
                allClientsAssisted = 0;
            }
           // while(!commandCompleted) {
             // sdf  continue;
            //}
        }
    }
//}

//void* Server::runThread(void* c) {
    //clientDetails* client = (clientDetails*)c;
    //Server s = Server();
   // assistClient(*client);
   // pthread_exit(0);
//}

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
//    delete socket;
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
    int numOfTrips = tc.checkTripTimes(timeClock.getTime());
    if(myDriver->hasTrip()) {
        return;
    }
    // SEND TRIP TO CLIENT

    if(numOfTrips > 0) {

        //gets trip that starts at current time
        pthread_mutex_lock(&mutex1);
        trip = tc.getNextTrip(timeClock.getTime());
        int i = 0;
        while (landmarks[i].getPoint().equal(trip.getStart())) {
            i++;
        }
        if (!landmarks[i].isEmpty()) {
            if (landmarks[i].isNextDriver(myDriver->getDriverId())) {
                //ERASE DRIVER FROM VECTOR
                landmarks[i].deleteDriver();
                if (landmarks[i].isEmpty()) {
                    landmarks.erase(landmarks.begin() + i);
                }
                pthread_mutex_unlock(&mutex1);
                myDriver->setTrip(&trip);
                Graph *tempMap = tc.getMap();
                myDriver->setMap(tempMap);
                tc.calculatePath(&calc, myDriver);
                Trip *trip1 = &trip;
                //SERIALIZATION OF TRIP
                boost::iostreams::back_insert_device<std::string> inserter(serializedTrip);
                boost::iostreams::stream<boost::iostreams::back_insert_device<std::string> > s(inserter);
                boost::archive::binary_oarchive oa(s);
                oa << trip1;
                s.flush();
                //Notifies client that they are going to receive a trip now
                cout << "BEFORE SENDING TRIP COMMAND" << endl;
                Server::sendCommand(2);
                cout << "BEFORE SENDING TRIP" << endl;
                tcp->sendData(serializedTrip, clientSocket);
                verifyResponse();
                cout << "AFTER SENDING TRIP" << endl;
            } else {
                tc.addTrip(trip);
            }
        }
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
    tcp->reciveData(buffer, sizeof(buffer), clientSocket);

    // DESERIALIZE BUFFER INTO DRIVER
    string s = createString(buffer, sizeof(buffer));
    Driver *receivedDriver;
    boost::iostreams::basic_array_source<char> device(s.c_str(), s.size());
    boost::iostreams::stream<boost::iostreams::basic_array_source<char> > s2(device);
    boost::archive::binary_iarchive ia(s2);
    ia >> receivedDriver;
    //adds received driver to temp vector of drivers, until it is assigned a trip
    //waitingDrivers.push_back(*receivedDriver);
    myDriver = receivedDriver;
    if(!landmarks.empty()) {
        landmarks.push_back(Point(0, 0));
    }
    landmarks[0].addDriver(receivedDriver->getDriverId());
    cout << "SOCKET: " << clientSocket << "RECEIVED DRIVER: "<< myDriver->getDriverId() << endl;
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
    tcp->sendData(commandString, clientSocket);
    verifyResponse();
}

/***********************************************************************
	* function name: sendNextLocation									   *
	* The Input: none													   *
	* The output: none										               *
	* The Function operation: drives the drivers, gets its next location,
     * serializes the point and sends it to client                         *
	***********************************************************************/
void Server::sendNextLocation() {
    cout << "IN SEND NEXT LOCATION" <<endl;
    int x = 0;
    int y = 0;
    cout << "SOCKET: "<<clientSocket<<"TRIP TIME: "<<myDriver->getTrip()->getTripTime()<<endl;
    if (myDriver->getTrip()->getTripTime() < timeClock.getTime()) {
        cout <<"IN IF OF SEND NEXT LOCATION"<<endl;
        pthread_join(calc, NULL);
        if (!tc.hasDriver(myDriver->getDriverId())) {
            tc.addDriver(*myDriver);
        }
        Point *ptrPoint = myDriver->getTrip()->getNextInPath();
        tc.moveDriver(myDriver->getDriverId());
        myDriver->getTrip()->updateStartPoint(*ptrPoint);
        std::string nextLocation;
        boost::iostreams::back_insert_device<std::string> inserter(nextLocation);
        boost::iostreams::stream<boost::iostreams::back_insert_device<std::string> > s1(inserter);
        boost::archive::binary_oarchive oa(s1);
        oa << ptrPoint;
        s1.flush();
        //notifies clients they are about to receive a new location
        cout << "BEFORE SENDING NP COMMAND" << endl;
        Server::sendCommand(9);
        cout << "BEFORE SENDING NP" << endl;
        tcp->sendData(nextLocation, clientSocket);
        verifyResponse();
        delete ptrPoint;
        //need to assign driver a new trip
        if (myDriver->arrived()) {
            int i=0;
            while (landmarks[i].getPoint().equal(myDriver->getTrip()->getEnd())) {
                i++;
            }
            landmarks[i].addDriver(myDriver->getDriverId());
            tc.deleteDriver(myDriver->getDriverId());
            myDriver->eraseTrip();
            Server::SendTripToClient();
        }
    }// }
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
    //int id = waitingDrivers.front().getDriverId();

    // FINDS CORRECT TAXI FOR DRIVER ID
    while (counter<len && vehicles[counter].getId()!= myDriver->getDriverId()){
        taxiIter++;
        counter++;
    }
    //sets taxi to driver with matching id, who still doesnt have a trip
    Taxi t = vehicles[counter];

    Taxi* taxiPointer = &(vehicles[counter]);
    // SERIALIZATION OF TAXI
    std::string serial_str;
    boost::iostreams::back_insert_device<std::string> inserter(serial_str);
    boost::iostreams::stream<boost::iostreams::back_insert_device<std::string> > s1(inserter);
    boost::archive::binary_oarchive oa(s1);
    oa << taxiPointer;
    s1.flush();
    // RETURN TAXI TO CLIENT
    tcp->sendData(serial_str, clientSocket);
    verifyResponse();
    //once taxi has been assigned to a driver, it can be deleted from vehicle vector
    vehicles.erase(vehicles.begin() + counter);

}

void Server::verifyResponse() {
    char buffer[1024];
    int ygjygv = tcp->reciveData(buffer, sizeof(buffer), clientSocket);
    string commandString = createString(buffer, sizeof(buffer));
    int command = 0;
    boost::iostreams::basic_array_source<char> device2(commandString.c_str(), commandString.size());
    boost::iostreams::stream<boost::iostreams::basic_array_source<char> > s4(device2);
    boost::archive::binary_iarchive ia2(s4);
    ia2 >> command;
    cout << "RECEIVED RESPONSE in SOCKET: "<< clientSocket <<endl;
}

void Server::setRank(int r) {
    rank = r;
}

#ifndef EX2_TRIP_H
#define EX2_TRIP_H

#include "Point.h"
#include <boost/serialization/access.hpp>
class Trip {
    friend class boost::serialization::access;

    template<class Archive>

    void serialize(Archive &ar, const unsigned int version)
    {
        ar & tripId;
        ar & xStart;
        ar & yStart;
        ar & xEnd;
        ar & yEnd;
        ar & numOfPassengers;
        ar & metersPassed;
        ar & tariff;
        ar & startTime;
    }
private:
    int tripId;
    int xStart;
    int yStart;
    int xEnd;
    int yEnd;
    Point start;
    Point end;
    int numOfPassengers;
    int metersPassed;
    double tariff;
    int startTime;
    vector<Coordinate*> path;

public:
    Trip();
    Trip(int tripId, int xStart, int yStart, int xEnd, int yEnd, int numOfPassengers, double tariff, int time);
    Trip(Trip* t);
    ~Trip();
    int getId();
    int getMeters();
    int getNumOfPassengers();
    double getTariff();
    void addMeters();
    Point getStart();
    Point getEnd();
    void updateStartPoint(Point p);
    int getTripTime();
    int getStartX();
    int getStartY();
    int getEndX();
    int getEndY();
    void setPath(vector<Coordinate*> p);

};


#endif //EX2_TRIP_H

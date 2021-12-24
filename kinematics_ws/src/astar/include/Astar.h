#ifndef ASTAR_H
#define ASTAR_H

#include <iostream>
#include <opencv2/opencv.hpp>
#include <cmath>
#include <nav_msgs/OccupancyGrid.h>
#include <tf/tf.h>

using namespace std;
using namespace cv;



struct MapParamNode{
    Point StartPoint, TargetPoint;
    Mat Rotation;
    Mat Translation;
    double resolution ;
    int height;
    int width;
    int x;
    int y;

};


#endif

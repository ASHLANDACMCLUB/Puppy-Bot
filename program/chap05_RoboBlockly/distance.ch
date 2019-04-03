/* File: distance.ch 
   Drive a robot as a two-wheel robot for a given distance. */
#include <mindstorms.h>
CMindstorms robot;
double distance=5;  // the distance of 5 inches to drive forward
double radius=1.1; // the radius of 1.1 inches of the two wheels of the robot 

/* drive forward for 5 inches with a specified radius of wheels */
robot.driveDistance(distance, radius);

/* drive backward for -7 inches with a specified radius of wheels */
robot.driveDistance(-distance-2, radius);

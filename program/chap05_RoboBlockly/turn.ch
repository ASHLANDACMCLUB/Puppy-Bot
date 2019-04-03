/* File: turn.ch 
   Turn left and turn right */
#include <mindstorms.h>
CMindstorms robot;
double radius = 1.1;       // radius of 1.1 inches 
double trackwidth = 4.54;  // the track width, the distance between two wheels

robot.driveDistance(5, radius);
robot.turnRight(90, radius, trackwidth);
robot.driveAngle(360);
robot.turnLeft(90, radius, trackwidth);
robot.driveAngle(360);

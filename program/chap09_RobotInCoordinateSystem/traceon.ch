/* File: traceon.ch
   Turn trace on and off with two Mindstormss
   Set the initial position (x, y) in RoboSim GUI to (0, 0) for robot. */
#include <mindstorms.h>
CMindstorms robot;
double radius = 1.1;      // radius of 1.1 inches
double trackwidth = 4.54;  // the track width, the distance between two wheels

robot.traceOn();  
robot.drivexyTo(6, 5, radius, trackwidth);  // line from (0, 0) to (6, 5)

robot.traceOff();  
robot.drivexyTo(0, 10, radius, trackwidth); // line from (6, 5) to (0, 10)

robot.traceOn();  
robot.drivexyTo(6, 15, radius, trackwidth); // line from (0, 10) to (6, 15)

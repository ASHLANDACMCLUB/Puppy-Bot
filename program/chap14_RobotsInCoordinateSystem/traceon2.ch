/* File: traceon2.ch
   Turn trace on and off with two Mindstorms 
   Set the initial position (x, y) in RoboSim GUI to (0, 0) for robot1.
   Set the initial position (x, y) in RoboSim GUI to (6, 0) for robot2. */
#include <mindstorms.h>
CMindstorms robot1, robot2;
double radius = 1.1;       // radius of 1.1 inches
double trackwidth = 4.54;  // the track width, the distance between two wheels

robot2.setLEDColor("red"); // set the robot2 LED color to red

robot1.traceOn();
robot2.traceOn();
robot1.drivexyToNB(6, 5, radius, trackwidth);  // line from (0, 0) to (6, 5)
robot2.drivexyTo(12, 5, radius, trackwidth);   // line from (6, 0) to (12, 5)
robot1.drivexyWait();

robot1.traceOff();
robot2.traceOff();
robot1.drivexyToNB(0, 10, radius, trackwidth); // line from (6, 5) to (0, 10)
robot2.drivexyTo(6, 10, radius, trackwidth);   // line from (12, 5) to (6, 10) 
robot1.drivexyWait();

robot1.traceOn();
robot2.traceOn();
robot1.drivexyToNB(6, 15, radius, trackwidth); // line from (0, 10) to (6, 15)
robot2.drivexyTo(12, 15, radius, trackwidth);  // line from (6, 10) to (12, 15)
robot1.drivexyWait();

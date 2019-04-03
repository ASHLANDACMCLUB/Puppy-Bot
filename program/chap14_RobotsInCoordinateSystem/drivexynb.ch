/* File: drivexynb.ch
   Note: This program uses drivexyNB() available in RoboSim only
         to move one Mindstorms from (-6, 0) to (-10, 5) by (-4, 5)
         and another Mindstorms from (6, 0) to (10, 5) by (4, 5) simultaneously.
         Then, to (-12, 10) by (4, 5) and to (12, 10) by (2, 5) at the same time.
   Set the initial position (x, y) in RoboSim GUI to (-6, 0) for robot1.
   Set the initial position (x, y) in RoboSim GUI to (6, 0) for robot2. */
#include <mindstorms.h>   
CMindstorms robot1, robot2;
double radius = 1.1;       // radius of 1.1 inches
double trackwidth = 4.54;  // the track width, the distance between two wheels

// uncomment lines below for controlling hardware robots
//robot1.initPosition(-6, 0, 90);
//robot2.initPosition(6, 0, 90);

robot1.drivexyNB(-4, 5, radius, trackwidth);
robot2.drivexy(4, 5, radius, trackwidth);
robot1.drivexyWait();

robot1.drivexyNB(-2, 5, radius, trackwidth);
robot2.drivexy(2, 5, radius, trackwidth);
robot1.drivexyWait();

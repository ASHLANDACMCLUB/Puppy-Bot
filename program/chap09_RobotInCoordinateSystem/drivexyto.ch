/* File: drivexyto.ch
   Note: This program uses drivexyTo() available in RoboSim only
         to move a Mindstorms from (0, 0) to (3, 4).
         Use getxy() to get the x and y coordinates of the robot.
   Set the initial position (x, y) in RoboSim GUI to (0, 0) for robot. */
#include <mindstorms.h>   /* for CMindstorms */
CMindstorms robot;
double radius = 1.1;      // radius of 1.1 inches
double trackwidth = 4.54;  // the track width, the distance between two wheels
double x, y;               // x and y coordinates

/* move the robot to the position (3, 4) */
robot.drivexyTo(3, 4, radius, trackwidth);

/* get the position of the robot */
robot.getxy(x, y);
printf("getxy(x, y) = (%lf, %lf)\n", x, y);

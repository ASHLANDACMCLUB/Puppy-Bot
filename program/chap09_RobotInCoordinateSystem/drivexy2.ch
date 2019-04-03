/* File: drivexy.ch
   Note: This program uses drivexy() available in RoboSim only
         to move a Mindstorms to (3, 4) with respect to (0, 0), then for (6, 12) 
         with respect to (3, 4), to (3+6, 4+12)=(9, 16).
         Use getxy() to get the x and y coordinates of the robot.
   Set the initial position (x, y) in RoboSim GUI to (0, 0) for robot. */
#include <mindstorms.h>   /* for CMindstorms */
CMindstorms robot;
double radius = 1.1;      // radius of 1.1 inches
double trackwidth = 4.54;  // the track width, the distance between two wheels
double x, y;               // x and y coordinates


/* move the robot for (3, 4) with respect to (0, 0) */
robot.drivexy(3, 4, radius, trackwidth);
/* get the position of the robot */
robot.getxy(x, y);
printf("getxy(x, y) = (%.1lf, %.1lf)\n", x, y);

/* move the robot for (6, 12) with respect to (3, 4) */
robot.drivexy(6, 12, radius, trackwidth);
/* get the position of the robot */
robot.getxy(x, y);
printf("getxy(x, y) = (%.1lf, %.1lf)\n", x, y);

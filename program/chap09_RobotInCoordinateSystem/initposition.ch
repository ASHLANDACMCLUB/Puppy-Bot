/* File: initposition.ch
   Note: This program uses drivexyTo() 
         to move a hardware Mindstorms from (0, 0) to (3, 4).
         Use getPosition() to get the x and y coordinates of the robot,
         and orientation angle.
   Set the initial position (x, y, angle) to (0, 0, 90) for the robot. */
#include <mindstorms.h>   /* for CMindstorms */
CMindstorms robot;
double radius = 1.1;      // radius of 1.1 inches
double trackwidth = 4.54;  // the track width, the distance between two wheels
double x, y;               // x and y coordinates
double angle;              // orientaion angle

/* set the initial position (x, y, angle) to (0, 0, 90) */
robot.initPosition(0, 0, 90);

/* move the robot to the position (3, 4) */
robot.drivexyTo(3, 4, radius, trackwidth);

/* get the position of the robot */
robot.getPosition(x, y, angle);
printf("getPositin(x, y, angle) = (%lf, %lf, %lf)\n", x, y, angle);

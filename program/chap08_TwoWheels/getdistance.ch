/* File: getdistance.ch
   Get the distance driven in the specified speed and time using robot.getDistance() */
#include <mindstorms.h>
CMindstorms robot;
double speed = 2.5;        // speed in inches/second
double radius = 1.1;      // radius of the wheel
double time1 = 5.5;        // 5.5 seconds
double distance;           // distance traveled

/* move to the zero position */
robot.resetToZero();

/* set the robot speed */
robot.setSpeed(speed, radius);

/* rotate joints 1 and 3 for the specified 'time' */
robot.driveTime(time1);

/* get the distance driven */
robot.getDistance(distance, radius);

printf("The distance driven is %.2lf inches.\n", distance);
printf("The distance to drive is %.2lf inches in theory.\n", speed*time1);

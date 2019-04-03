/* File: gettime.ch
   Get the time to drive the viehcle with a specified speed and distance */
#include <mindstorms.h>

CMindstorms robot;
double speed = 2.5;        // speed in inches/second
double radius = 1.1;      // radius of the wheel
double distance = 10;      // distance in inches
double time1, time2, elapsedtime;    // system time and elapsed time

/* set the robot speed */
robot.setSpeed(speed, radius);

robot.systemTime(time1);       // get the system time since the system starts
/* drive the specified distance based on the radius of the wheels */
robot.driveDistance(distance, radius);
robot.systemTime(time2);       // get the system time since the system starts
elapsedtime = time2 - time1;   // Calculate the time for the motion.

printf("The motion for the robot took %.2lf seconds\n", elapsedtime);
printf("The motion should take %.2lf seconds in theory.\n", distance/speed);

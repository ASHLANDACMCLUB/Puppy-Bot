/* File: drivetime_p.ch 
   Move a two-wheel robot with the user specified radius of wheels, speed, and time. */
#include <mindstorms.h>
CMindstorms robot;
double radius;      // the radius of the two wheels of the robot in inches
double speed;       // the speed in inches per second for a two-wheel robot
double time1;       // time for the movement

printf("Enter the radius of the two wheels in inches\n");
scanf("%lf", &radius);

printf("Enter the speed of the two-wheel robot in inches per second\n");
scanf("%lf", &speed);
/* set the speed for a two-wheel robot */
robot.setSpeed(speed, radius);

printf("Enter the time in seconds for the two-wheel robot to drive\n");
scanf("%lf", &time1);
/* rotate joints 1 and 3 for the specified 'time1' */
robot.driveTime(time1);

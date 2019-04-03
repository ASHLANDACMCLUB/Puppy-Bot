/* File: drivedistance_p.ch 
   Drive a two-wheel robot with the user specified radius of wheels, speed, 
   and distance. */
#include <mindstorms.h>
CMindstorms robot;
double speed;       // the speed in inches per second for a two-wheel robot
double radius;      // the radius of the two wheels of the robot in inches
double distance;    // distance to drive 

printf("Enter the radius of the two wheels in inches\n");
scanf("%lf", &radius);

printf("Enter the speed of the two-wheel robot in inches per second\n");
scanf("%lf", &speed);
/* set the speed for a two-wheel robot */
robot.setSpeed(speed, radius);

printf("Enter the distance in inches for the two-wheel robot to drive\n");
scanf("%lf", &distance);

/* drive the specified distance based on the radius of the wheels */
robot.driveDistance(distance, radius);

/* File: distanceangle_p.ch 
   User inputs the values for distance to drive and angle to turn right */
#include <mindstorms.h>
CMindstorms robot;
double distance; // declare variable 'distance' to drive
double angle;    // declare variable 'angle' for turnRight 
double radius = 1.1;     // radius of the wheels
double trackwidth = 4.54; // track width inches

/* User inputs distance and angle */
printf("Enter the distance to drive\n");
scanf("%lf", &distance);
printf("Enter the angle to turn right \n");
scanf("%lf", &angle);

/* turn right by angle */
robot.driveDistance(distance, radius);
robot.turnRight(angle, radius, trackwidth);

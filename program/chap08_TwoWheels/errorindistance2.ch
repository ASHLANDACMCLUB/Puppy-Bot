/* File: errorindistance2.ch
   Estimate the error in the distance between the specified and drive distances
   usig robot.getJointAngle() and angle2distance() */
#include <mindstorms.h>
CMindstorms robot;
double speed = 2.5;        // speed in inches/second
double radius = 1.1;      // radius of the wheel
double distance = 12;      // distance to drive in inches 
double angle;              // angle corresponding to the drived distance in degrees
double distance2;          // distance drived based on the angle 

/* move to the zero position */
robot.resetToZero();

/* set the robot speed */
robot.setSpeed(speed, radius);

/* drive the specified distance based on the radius of the wheels */
robot.driveDistance(distance, radius);

/* obtain the angle for joint 2 */
robot.getJointAngle(JOINT2, angle);

/* calculate the distance based on the joint angle */
distance2 = angle2distance(radius, angle); 

printf("The distance to drive is %.2lf inches.\n", distance);
printf("The actual distance drived is %.2lf inches.\n", distance2);
printf("The error is %lf inches.\n", distance-distance2);
printf("The error is %lf percent.\n", (distance-distance2)/distance *100);


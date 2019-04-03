/* File: radian.ch 
   Move the robot joint 2 with speed specified in radians per second. */
#include <mindstorms.h>
CMindstorms robot;
double angle;
double speed;

/* move to the zero position */
robot.resetToZero();

/* set the speed specified in radians per second */
speed = 1.5;            // speed in 1.5 radians per second
speed = radian2degree(speed); // convert the speed to degrees per second
robot.setJointSpeed(JOINT2, speed);

/* rotate joint 2 by 90 degrees */
robot.moveJoint(JOINT2, 90);

/* get the joint angle in degrees, display in both degrees and radians */
robot.getJointAngle(JOINT2, angle);
printf("Joint2 angle = %.2lf degrees.\n", angle);
angle = degree2radian(angle);  // convert the angle in degrees to radian
printf("Joint2 angle = %.2lf radians.\n", angle);

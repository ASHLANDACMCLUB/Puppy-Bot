/* File: twodiffwheels.ch 
   Drive a robot with different wheel sizes in a straight line */
#include <mindstorms.h>
CMindstorms robot;
double speed2, speed3;  // the joint speeds 

/* set joint speeds and drive the robot with a specified time  */
speed2 = 100;
speed3 = 68.3;
robot.setJointSpeeds(NaN, speed2, speed3);
robot.driveTime(4);

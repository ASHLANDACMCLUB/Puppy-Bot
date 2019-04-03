/* File: movejointtimeneg.ch 
   Move a joint in a specified time, with a negative speed. */
#include <mindstorms.h>
CMindstorms robot;
double time1=5;   // five seconds
double speed=90; // 90 degrees per second

/* set the joint speed for joint 2 to -90 degrees per second */
robot.setJointSpeed(JOINT2, -speed);

/* rotate joint 2 for the specified 'time1' */
robot.moveJointTime(JOINT2, time1);

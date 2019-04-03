/* File: time.ch
   Get the time for a robot to finish its motion */
#include <mindstorms.h>
CMindstorms robot;
double speed = 90;         // speed in degrees/second
double angle = 720;        // joint angle 
double time1, time2, elapsedtime;    // system time and elapsed time

/*  set the joint speed for joint 2  */
robot.setJointSpeed(JOINT2, speed); 

robot.systemTime(time1);       // get the system time since the system starts
robot.moveJoint(JOINT2, angle); // rotate joint 2 by 'angle'
robot.systemTime(time2);       // get the system time since the system starts
elapsedtime = time2 - time1;   // Calculate the time for the motion. 

printf("The motion for the robot took %.2lf seconds\n", elapsedtime);
printf("The motion should take %.2lf seconds in theory.\n", angle/speed);

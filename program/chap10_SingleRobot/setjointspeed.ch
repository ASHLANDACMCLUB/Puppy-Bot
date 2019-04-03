/* File: setjointspeed.ch 
   Get and set a joint . */
#include <mindstorms.h>
CMindstorms robot;
double speed;  // the joint angular speed in degrees per second

/* get the joint angular speed for joint 2 */
robot.getJointSpeed(JOINT2, speed);
printf("Joint2 angular speed = %.2lf degrees per second\n", speed);

/* set the joint angular speed  for joint 2 to 90 degrees per second */
speed = 90;
robot.setJointSpeed(JOINT2, speed);

/* rotate joint 2 by 360 degrees */
robot.moveJoint(JOINT2, 360);

/* get the joint angular speed for joint 2 */
robot.getJointSpeed(JOINT2, speed);
printf("Joint2 angular speed = %.2lf degrees per second\n", speed);

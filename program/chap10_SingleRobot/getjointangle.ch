/* File: getjointangle.ch 
   Get a joint angle. */
#include <mindstorms.h>
CMindstorms robot;
double angle;  // declare the variable 'angle' to hold a joint angle

/* move to the zero position */
robot.resetToZero();

/* move the joint 2 by 90 degrees and joint 3 by 90 degrees */
robot.move(0, 90, 90);
/* obtain the angle for joint 2 */
robot.getJointAngle(JOINT2, angle);
printf("Joint2 angle = %.2lf degrees.\n", angle);

/* move the joint 2 by 360 degrees and joint 3 by 360 degrees */
robot.moveTo(NaN, 360, 360);
robot.getJointAngle(JOINT2, angle);
printf("Joint2 angle = %.2lf degrees.\n", angle);

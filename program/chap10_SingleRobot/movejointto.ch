/* File: movejointto.ch 
   Move a joint to the absolute position. */
#include <mindstorms.h>
CMindstorms robot;
double angle;

/* move to the zero position */
robot.resetToZero();

/* move joint 2 to the position of 180 degrees. */
robot.moveJointTo(JOINT2, 180);

/* move joint 2 to the position of 360 degrees. */
robot.moveJointTo(JOINT2, 360);

/* move joint 2 to the position of 720 degrees. */
robot.moveJointTo(JOINT2, 720);

robot.getJointAngle(JOINT2, angle);
printf("Joint2 angle = %.2lf degrees.\n", angle);

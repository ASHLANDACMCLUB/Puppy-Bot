/* File: movejoint.ch 
   Move a joint relative to its current position. */
#include <mindstorms.h>
CMindstorms robot;
double angle;

/* move to the zero position */
robot.resetToZero();

/* move joint 2 by 180 degrees. */
robot.moveJoint(JOINT2, 180);

robot.delaySeconds(0.5); //  delay 0.5 second 

/* move joint 2 by 180 degrees. */
robot.moveJoint(JOINT2, 180);

robot.delaySeconds(0.5); //  delay 0.5 second 

/* move joint 2 by 360 degrees. */
robot.moveJoint(JOINT2, 360);

robot.delaySeconds(0.5); //  delay 0.5 second 

robot.getJointAngle(JOINT2, angle);
printf("Joint2 angle = %.2lf degrees.\n", angle);

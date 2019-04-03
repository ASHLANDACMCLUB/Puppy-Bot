/* File: copycat.ch
   Copy the motion of the 1st robot to the 2nd robot by moving joints of 
   the 1st robot manually */
#include <mindstorms.h>
CMindstorms robot1, robot2;
double angle2, angle3;

/* move to the zero position at the same time. */
robot1.resetToZeroNB();
robot2.resetToZeroNB();
robot1.moveWait();
robot2.moveWait();

/* relax all joints of robot1 */
robot1.relaxJoints();

printf("You can now move joints of robot1 manually to control robot2\n");
while(1) {
    /* get the 1st robot joint angles */
    robot1.getJointAngles(NaN, angle2, angle3);
    /* drive the 2nd robot to the same position of the 1st robot */
    robot2.moveToByTrackPosNB(NaN, angle2 ,angle3); 
}

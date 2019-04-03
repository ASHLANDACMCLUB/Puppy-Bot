/* File: copycatgrouptwo.ch
   One robot controls two robots, either individually or connected.
   robot1 is the controller
*/
#include <mindstorms.h>
CMindstorms robot1, robot2, robot3;
CMindstormsGroup group;
/* angles from robot1 */
double angle2, angle3;

group.addRobot(robot2);
group.addRobot(robot3);

/* move to the zero position at the same time. */
robot1.resetToZeroNB();
group.resetToZeroNB();
robot1.moveWait();
group.moveWait();

/* relax all joints of robot1 */
robot1.relaxJoints();

printf("You can now move joints of robot1 to control robot2 and 3\n");
while(1){
    /* get joint angles of robot1 */
    robot1.getJointAngles(NaN, angle2, angle3);

    /* move  robots in the group by the angles from robot1 */
    group.moveToByTrackPosNB(NaN, angle2, angle3);
}

/* File: copycatthree.ch
   Three robots control three other robots.
   If two or three robots are connected, make sure two or three 
   master robots are connected in the same way as slave robots.
*/
#include <mindstorms.h>
CMindstorms robot1, robot2, robot3, robot4, robot5, robot6;
double angle2a, angle3a; // angles from robot1 
double angle2b, angle3b; // angles from robot2 
double angle2c, angle3c; // angles from robot3 

/* move to the zero position at the same time */
robot1.resetToZeroNB();
robot2.resetToZeroNB();
robot3.resetToZeroNB();
robot4.resetToZeroNB();
robot5.resetToZeroNB();
robot6.resetToZeroNB();
robot1.moveWait();
robot2.moveWait();
robot3.moveWait();
robot4.moveWait();
robot5.moveWait();
robot6.moveWait();

/* relax all joints of robot1, 2, and 3 */
robot1.relaxJoints();
robot2.relaxJoints();
robot3.relaxJoints();

printf("You can now move joints of robot1, 2, and 3 \n");
printf("to control robot4, 5, and 6\n");
while(1){
    /* get joint angles of robot1 to control robot3 */
    robot1.getJointAngles(NaN, angle2a, angle3a);
    /* get joint angles of robot2 to control robot4 */
    robot2.getJointAngles(NaN, angle2b, angle3b);
    /* get joint angles of robot3 to control robot4 */
    robot3.getJointAngles(NaN, angle2c, angle3c);

    /* move robot4 by the angles from robot1 */
    robot4.moveToByTrackPosNB(NaN, angle2a, angle3a);
    /* move robot5 by the angles from robot2 */
    robot5.moveToByTrackPosNB(NaN, angle2b, angle3b);
    /* move robot6 by the angles from robot3 */
    robot6.moveToByTrackPosNB(NaN, angle2c, angle3c); 
}

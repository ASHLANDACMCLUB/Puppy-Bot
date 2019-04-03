/* Filename: speedcontrol.ch
   The joint angles for robot1 will determine the speed of joints for robot2. */
#include <mindstorms.h>
CMindstorms robot1, robot2;
double angle2, angle3;
double speed2, speed3;

/* set the current position as zero position */
robot1.resetToZero();
/* relax all joints of robot1 */
robot1.relaxJoints();

/* set joints of robot2 to move forward */
robot2.driveForeverNB();

while(1) {
    robot1.getJointAngles(NaN, angle2, angle3);

    speed2 = angle2;
    if(speed2 > 200) {
        speed2 = 200;
    } 
    else if(speed2 < -200) {
        speed2 = -200;
    }

    speed3 = angle3;
    if(speed3 > 200) {
        speed3 = 200;
    } 
    else if(speed3 < -200) {
        speed3 = -200;
    }

    robot2.setJointSpeeds(NaN, speed2, speed3);
}

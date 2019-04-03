/* File: accelcontrol.ch
   The accelerometer value for the 1st robot in green color will determine
   the motion for the 2nd robot in red color. */
#include <mindstorms.h>
CMindstorms robot1, robot2;
double x, y, z;
int motorPower, motorOffset;

/* relax all joints of robot2 */
robot2.relaxJoints();

while(1) {
    /* Get the accelerometer values */
    robot1.getAccelerometerData(x, y, z);
    /* Calculate forward-backward */
    motorPower = 200 * y;
    motorOffset = 50 * x;
    robot2.moveJointByPowerNB(JOINT1, -motorPower - motorOffset);
    robot2.moveJointByPowerNB(JOINT3, motorPower - motorOffset);
}

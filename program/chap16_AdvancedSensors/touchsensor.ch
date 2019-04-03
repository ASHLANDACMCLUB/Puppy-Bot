/* File name: touchsensor.ch
   The purpose of this demo is to demonstrate the CH Mindstorms
   Control Package's ability to use a touch sensor to
   control a robot. */
#include <mindstorms.h>
CMindstorms robot;
int touchValue=0;

/* Set sensor types */
robot.setSensorTouch(PORT1, "Touch");

/* set joint speed ratios */
robot.setJointSpeedRatios(NaN, 0.25, 0.25);

/* Move Robot Forward */
robot.driveForeverNB();

/* Commands: */
while(1){
    /* Get touch sensor data */
    robot.getSensorTouch(PORT1, touchValue);
    /* If touch sensor is triggered */
    if(touchValue){
        /* Move backward */
        robot.setJointSpeedRatios(NaN, -0.25, -0.25);
        robot.driveTime(2);
        /* quit the while loop */
        break;
    }
}

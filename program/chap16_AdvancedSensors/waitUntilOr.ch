/* File name: waitUntilOr.ch
   The purpose of this demo is to demonstrate the use of the 
   waitUntilOr function with an ultrasonic sensor. */
#include <mindstorms.h>
CMindstorms robot;

/* Set sensor type */
robot.setSensorUltrasonic(PORT4, "Centimeter");

/* Drive robot backwards */
robot.setJointSpeedRatios(0, -0.2, -0.2);
robot.driveForeverNB();

/* Continue driving until the ultrasonic sensor returns a value greater 
   than 20 or less than 10 */
printf("wait ultrasonic sensor.\n");
robot.waitUntilOr(PORT4, ">", 20, "<", 10);

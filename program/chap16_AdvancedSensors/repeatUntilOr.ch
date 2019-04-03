/* File name: repeatUntilOr.ch
   The purpose of this demo is to demonstrate the use of the
   repeatUntilOr function with an ultrasonic sensor. */
#include <mindstorms.h>
CMindstorms robot;

void dowork() {
    robot.driveAngle(30);
}


/* Set sensor type */
robot.setSensorUltrasonic(PORT4, "Centimeter");

/* Continue driving until the ultrasonic sensor returns a value
    greater than 20 or less than 10 */
printf("wait ultrasonic sensor.\n");
robot.repeatUntilOr(dowork, PORT4, ">", 20, "<", 10);

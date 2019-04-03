/* File name: repeatUntilAnd.ch
   The purpose of this demo is to demonstrate the use of the
   repeatUntilAnd function with an Ultrasonic sensor. */
#include <mindstorms.h>
CMindstorms robot;

void dowork() {
    robot.driveAngle(30);
}

/* Set sensor type */
robot.setSensorUltrasonic(PORT4, "Centimeter");

/* Continue driving until the ultrasonic sensor returns a value
    greater than 10 and less than 20 */
printf("wait ultrasonic sensor.\n");
robot.repeatUntilAnd(dowork, PORT4, ">", 10, "<", 20);

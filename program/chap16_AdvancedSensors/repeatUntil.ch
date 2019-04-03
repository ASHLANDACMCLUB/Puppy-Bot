/* File name: repeatUntil.ch
   The purpose of this demo is to demonstrate the use of the
   repeatUntil function with a touch sensor. */
#include <mindstorms.h>
CMindstorms robot;

void dowork() {
    robot.driveAngle(30);
}


/* Set sensor type */
robot.setSensorTouch(PORT1, "Touch");

/* Continue driving until the touch sensor returns a value of 1 */
printf("wait touch sensor pressed.\n");
robot.repeatUntil(dowork, PORT1, "==", 1);

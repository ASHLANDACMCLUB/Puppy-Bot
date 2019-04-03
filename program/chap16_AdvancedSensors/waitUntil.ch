/* File name: waitUntil.ch
   The purpose of this demo is to demonstrate the use of the 
   waitUntil function with a touch sensor. */
#include <mindstorms.h>
CMindstorms robot;

/* Set sensor type */
robot.setSensorTouch(PORT1, "Touch");

/* Drive robot forward */
robot.driveAngleNB(360);

/* Wait until the touch sensor is pressed*/
printf("wait touch sensor pressed.\n");
robot.waitUntil(PORT1, "==", 1);

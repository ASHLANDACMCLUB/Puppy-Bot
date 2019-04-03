/* File name: sensor.ch
 * A brief introduction of using sensors of a robot. */
#include <mindstorms.h>
CMindstorms robot;

/* Variables to store values gotten from robot */
int touchValue;
double ultraValue;

/* set touch and ultrasonic sensor */
robot.setSensorTouch(PORT1, "Touch");
robot.setSensorUltrasonic(PORT4, "Centimeter");

/* get values collected by sensors from robot */
robot.getSensorTouch(PORT1, touchValue);
robot.getSensorUltrasonic(PORT4, ultraValue);

/* display the values we got onto the screen */
printf("Touch sensor: %d\n", touchValue);
printf("Ultrasonic sensor: %lf\n", ultraValue);

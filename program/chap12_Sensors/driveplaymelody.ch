/* File: driveplaymelody.ch
   Drive a distance and play a melody at the same time */
#include <mindstorms.h>
CMindstorms robot;
double radius = 1.1;
double distance = 12;

/* do not block the execution of the next line of the code */
robot.driveDistanceNB(distance, radius);

/* play "Jingle Bells" */
robot.playMelody(JingleBells, 1);

/* wait for driveDistanceNB() to finish */
robot.moveWait();

robot.driveDistance(-distance, radius);


/* File: playmelody.ch
   Play a melody */
#include <mindstorms.h>
CMindstorms robot;

/* play "Jingle Bells" at the normal speed */
robot.playMelody(JingleBells, 1);

/* drive forward for 5 inches with the radius 1.1 inches for two wheels */
robot.driveDistance(5, 1.1);

/* double the normal speed */
robot.playMelody(JingleBells, 2);

/* half of the normal speed */
robot.playMelody(JingleBells, 0.5);

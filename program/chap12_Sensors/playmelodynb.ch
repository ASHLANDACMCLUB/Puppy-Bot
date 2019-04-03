/* File: playmelodynb.ch
   Play a melody and drive a distance at the same time */
#include <mindstorms.h>
CMindstorms robot;
double radius = 1.1;
double distance = 12;

/* play "Jingle Bells". 
   do not block the execution of the next line of the code */
robot.playMelodyNB(JingleBells, 1);

robot.driveDistance(distance, radius);

/* wait for playMelodyNB() to finish */
robot.playNotesWait();

robot.driveDistance(-distance, radius);

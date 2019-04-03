/* File: playmelodyTwoPitches.ch
   Two robots play "The Ants Go Marching" melody at the same time, 
   one with high pitch */
#include <mindstorms.h>
CMindstorms robot1, robot2;

/* play "The Ants Go Marching" melody at the same time, one with high pitch */
robot1.playMelodyNB(AntsGoMarching, 1);
robot2.playMelody(AntsGoMarchingHighPitch, 1);
robot1.playNotesWait();

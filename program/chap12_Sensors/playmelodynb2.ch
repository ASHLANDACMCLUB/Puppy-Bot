/* File: playmelodynb2.ch
   Two robot play Jingle Bells melody at the same time */
#include <mindstorms.h>
CMindstorms robot1, robot2;

/* play Jingle Bells melody */
robot1.playMelodyNB(JingleBells, 1);
robot2.playMelody(JingleBells, 1);
robot1.playNotesWait();

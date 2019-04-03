/* File: playnotes.ch
   Play music notes for Happy Birthday song */
#include <linkbot.h>
CLinkbotI robot;

/* Happy Birthday song */
note_t song[] = {{NOTE_C4, 8}, {NOTE_C4, 8},
                 {NOTE_D4, 4}, {NOTE_C4, 4}, {NOTE_F4, 4},
                 {NOTE_E4, 4}, {0, 4}, {NOTE_C4, 8},
                 {NOTE_C4, 8}, {NOTE_D4, 4}, {NOTE_C4, 4},
                 {NOTE_G4, 4}, {NOTE_F4, 4}, {0, 4},
                 {NOTE_C4, 8}, {NOTE_C4, 8}, {NOTE_C5, 4},
                 {NOTE_A4, 4}, {NOTE_F4, 8}, {NOTE_F4, 8},
                 {NOTE_E4, 4}, {NOTE_D4, 4}, {0, 4},
                 {NOTE_AS4, 8}, {NOTE_AS4, 8}, {NOTE_A4, 4},
                 {NOTE_F4, 4}, {NOTE_G4, 4}, {NOTE_F4, 4}};

robot.playNotes(song, 1);  // play notes at the normal speed
robot.playNotes(song, 2);  // play notes twice faster

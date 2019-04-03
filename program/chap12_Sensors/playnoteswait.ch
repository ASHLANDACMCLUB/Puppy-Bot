/* File: playnoteswait.ch
   Play two music notes at the same time for Happy Birthday song */
#include <linkbot.h>
CLinkbotI robot1, robot2;

/* Happy Birthday song */
note_t song1[] = {{NOTE_C4, 8}, {NOTE_C4, 8},
                 {NOTE_D4, 4}, {NOTE_C4, 4}, {NOTE_F4, 4},
                 {NOTE_E4, 4}, {0, 4}, {NOTE_C4, 8},
                 {NOTE_C4, 8}, {NOTE_D4, 4}, {NOTE_C4, 4},
                 {NOTE_G4, 4}, {NOTE_F4, 4}, {0, 4},
                 {NOTE_C4, 8}, {NOTE_C4, 8}, {NOTE_C5, 4},
                 {NOTE_A4, 4}, {NOTE_F4, 8}, {NOTE_F4, 8},
                 {NOTE_E4, 4}, {NOTE_D4, 4}, {0, 4},
                 {NOTE_AS4, 8}, {NOTE_AS4, 8}, {NOTE_A4, 4},
                 {NOTE_F4, 4}, {NOTE_G4, 4}, {NOTE_F4, 4}};

/* Happy Birthday song with higher pitch */
note_t song2[] = {{NOTE_C5, 8}, {NOTE_C5, 8},
                 {NOTE_D5, 4}, {NOTE_C5, 4}, {NOTE_F5, 4},
                 {NOTE_E5, 4}, {0, 4}, {NOTE_C5, 8},
                 {NOTE_C5, 8}, {NOTE_D5, 4}, {NOTE_C5, 4},
                 {NOTE_G5, 4}, {NOTE_F5, 4}, {0, 4},
                 {NOTE_C5, 8}, {NOTE_C5, 8}, {NOTE_C6, 4},
                 {NOTE_A5, 4}, {NOTE_F5, 8}, {NOTE_F5, 8},
                 {NOTE_E5, 4}, {NOTE_D5, 4}, {0, 4},
                 {NOTE_AS5, 8}, {NOTE_AS5, 8}, {NOTE_A5, 4},
                 {NOTE_F5, 4}, {NOTE_G5, 4}, {NOTE_F5, 4}};

robot1.playNotesNB(song1, 1);
robot2.playNotes(song2, 1);
robot1.playNotesWait();

/* File: birthday.ch
   Play the melody myHappyBirthday */
#include <mindstorms.h>
CMindstorms robot;
note_t myHappyBirthday(int i);

/* drive the robot 5 inches forward, then playing the melody */
robot.driveDistance(5, 1.1);
robot.playMelody(myHappyBirthday, 1);

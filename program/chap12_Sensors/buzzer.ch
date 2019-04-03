/* File: buzzer.ch
   Make a buzz with the frequency 450 for 1 second */
#include <mindstorms.h>
CMindstorms robot;
int freq = 450;              // frequency for the buzz.
double time1 = 1;            // time in seconds

// set the buzzer with "freq" for "time1" seconds
robot.setBuzzerFrequency(freq, time1); 

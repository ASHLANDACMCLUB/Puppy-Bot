/* File: buzzers.ch
   Two robot buzzers sound together at the same time */
#include <mindstorms.h>
CMindstorms robot1, robot2;
int freq1 = 450, freq2 = 900;

/* set the buzzers on at different frequencies */
robot1.setBuzzerFrequencyOn(freq1); 
robot2.setBuzzerFrequencyOn(freq2); 

/* Two buzzers sound for 5 seconds */
robot1.delaySeconds(5); 

/* set the buzzers off */
robot1.setBuzzerFrequencyOff(); 
robot2.setBuzzerFrequencyOff(); 

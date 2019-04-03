/* File: buzzer3.ch
   Make buzzes with the frequencies from 1 to 10000 */
#include <mindstorms.h>
CMindstorms robot;
int freq = 1;

while (freq<10000) {
   printf("frequency is %d\n", freq);
   robot.setBuzzerFrequency(freq, 0.05);
   freq = freq + 1;
}

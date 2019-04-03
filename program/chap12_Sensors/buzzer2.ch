/* File: buzzer2.ch
   Make a buzz with the frequency specified by the user  */
#include <mindstorms.h>
CMindstorms robot;
int freq;
string_t answer = "yes";    /* "yes" to continue, others to quit */

while(answer == "yes") {
   printf("Please input the frequency for the buzzer\n");
   scanf("%d", &freq);
   robot.setBuzzerFrequency(freq, 1);
   printf("Would you like to enter another frequency? Type yes or no.\n");
   scanf("%s", &answer);
}

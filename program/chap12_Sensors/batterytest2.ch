/* File: batterytest2.ch
   Get the battery voltage every 5 minutes until the battery dies. */
#include <mindstorms.h>
CMindstorms robot;
double time1 = 300;   // 5 minutes = 5 * 60 seconds = 300 seconds
double totalTime = 0; // a variable to keep track of the total time in seconds.
double voltage = 4.2; // a starting value for v, so that the program enters the while loop.

// repeat the following until either voltage < 3.3
while (voltage >= 3.3){

    // moveTime() for 5 minutes
    robot.moveTime(time1);
    
    // add 5 minutes to total time
    totalTime = totalTime + time1;

    // get the battery voltage v
    robot.getBatteryVoltage(voltage);
    
    // print current time and voltage to console
    printf("Time in seconds: %lf,  Battery voltage: %lf\n", totalTime, voltage);    
}


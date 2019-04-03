/* File: linkbotmindstorms.ch
   Linkbot moves first for 16s at 1.5in/s.
   8 seconds later, a NXT/EV3 moves for 8s at 3in/s.
   The equations of motions are
        d = 1.5t
        d = 3(t-8) */
#include <linkbot.h>
#include <mindstorms.h>
CLinkbotI robot1;
CMindstorms robot2;
double speed1=1.5, speed2=3;
double radius1=1.75, radius2=1.1;
double time1=16, delaytime=8, time2=8;  

robot1.setSpeed(speed1, radius1);
robot2.setSpeed(speed2, radius2);

robot1.driveTimeNB(time1);
robot2.delaySeconds(delaytime);
robot2.driveTime(time2);
robot1.moveWait(); 

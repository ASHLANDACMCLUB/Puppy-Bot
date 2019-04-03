/* File: linkbotmindstorms2.ch
   A Linkbot moves first for 16s at 1.5in/s.
   8 seconds later, a NXT/EV3 moves for 8s at 3in/s.
   The equations of motions are
          d = 1.5t
          d = 3(t-8)
   Record time and distances using driveTime() and driveTimeNB().
   plot the acquired data for two robots */
#include <linkbot.h>
#include <mindstorms.h>
#include <chplot.h>
CLinkbotI robot1;
CMindstorms robot2;
double speed1=1.5, speed2=3; // speeds of robots in inches per second
double radius1=1.75, radius2=1.1; // the radii of two wheels of robot1 and 2
double time1=16, time2=8;    // motion time in seconds for robot1 and robot2
double delaytime=8;          // delay time for robot2 
double timeInterval = 0.1;   // time interval in 0.1 second 
int numDataPoints1, numDataPoints2; // number of data points recorded
robotRecordData_t timedata1, distances1; // recorded time and distances for robot1
robotRecordData_t timedata2, distances2; // recorded time and distances for robot2
CPlot plot;                  // plotting class

/* move to the zero position at the same time. */
robot1.resetToZeroNB();  robot2.resetToZeroNB();
robot1.moveWait();       robot2.moveWait();

/* set the speeds for robot1 and robot2 */
robot1.setSpeed(speed1, radius1);
robot2.setSpeed(speed2, radius2);

/* disable record data shift and begin recording time and distance */
robot1.recordNoDataShift();
robot2.recordNoDataShift();
robot1.recordDistanceBegin(timedata1,distances1,radius1,timeInterval);
robot2.recordDistanceBegin(timedata2,distances2,radius2,timeInterval);

/* robot1 drives first for a total of 'time1' seconds. 'delaytime' seconds later, 
   robot2 drives for 'time2' seconds while robot1 also drives */
robot1.driveTimeNB(time1);
robot2.delaySeconds(delaytime);
robot2.driveTime(time2);
robot1.moveWait();  // wait till robot1 moved 'time1' seconds 

/* end recording time and distance */
robot1.recordDistanceEnd(numDataPoints1);
robot2.recordDistanceEnd(numDataPoints2);

/* plot the data */
plot.title("Distances versus time");
plot.label(PLOT_AXIS_X, "Time (seconds)");
plot.label(PLOT_AXIS_Y, "Distances (inches)");
plot.data2DCurve(timedata1, distances1, numDataPoints1);
plot.legend("Distance for robot 1");
plot.data2DCurve(timedata2, distances2, numDataPoints2);
plot.legend("Distance for robot 2");
plot.plotting();

/* File: recordangles.ch
   Record joint angles and time, plot the acquired data */
#include <mindstorms.h>
#include <chplot.h>
CMindstorms robot;
double speed2 = 120;        // speed for joint 2 in 120 degrees/sec nds 
double speed3 = -90;        // speed for joint 3 in -90 degrees/seconds 
double timeInterval = 0.1; // time interval in 0.1 second 
int numDataPoints;         // number of data points recorded
robotRecordData_t timedata, angledata2; // recorded time and angles for joint 2
robotRecordData_t angledata3; // recorded angles for joint 3
CPlot plot;                // plotting class

/* move to the zero position */
robot.resetToZero();

/* set the joints 2 and 3 speed */
robot.setJointSpeeds(NaN, speed2, speed3);

/* begin recording time and angles */
robot.recordAnglesBegin(timedata, angledata2, angledata3, timeInterval);

/* move joint 2 for 720 degrees */
robot.moveJointNB(JOINT2, 720);
/* move joint 3 for 360 degrees */
robot.moveJoint(JOINT3, 360);
robot.moveJointWait(JOINT2);

/* end recording time and angle */
robot.recordAnglesEnd(numDataPoints);

/* plot the data */
plot.title("Angles for joint 2 versus time");
plot.label(PLOT_AXIS_X, "time (seconds)");
plot.label(PLOT_AXIS_Y, "angles (degrees)");
plot.scattern(timedata, angledata2, numDataPoints);
plot.legend("Angle for joint 2");
plot.scattern(timedata, angledata3, numDataPoints);
plot.legend("Angle for joint 3");
plot.plotting();

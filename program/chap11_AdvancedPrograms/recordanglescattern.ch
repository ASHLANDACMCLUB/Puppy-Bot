/* File: recordanglescatten.ch
   Record a joint angle and time, plot the acquired data */
#include <mindstorms.h>
#include <chplot.h>
CMindstorms robot;
double speed = 90;         // speed in 90 degrees/seconds 
double timeInterval = 0.1; // time interval in 0.1 second 
int numDataPoints;         // number of data points recorded
robotRecordData_t timedata, angledata; // recorded time and angles for joint 2
CPlot plot;                // plotting class

/* move to the zero position */
robot.resetToZero();

/* set the joint 2 speed */
robot.setJointSpeed(JOINT2, speed);

/* begin recording time and angle */
robot.recordAngleBegin(JOINT2, timedata, angledata, timeInterval);

/* move joint 2 for 360 degrees */
robot.moveJoint(JOINT2, 360);

/* end recording time and angle */
robot.recordAngleEnd(JOINT2, numDataPoints);

/* plot the data */
plot.title("Angles for joint 2 versus time");
plot.label(PLOT_AXIS_X, "time (seconds)");
plot.label(PLOT_AXIS_Y, "angle for joint2 (degrees)");
plot.scattern(timedata, angledata, numDataPoints);
plot.plotting();

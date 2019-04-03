/* File: recordxy.ch
   Trace and record the x and y positions, plot the acquired data 
   Set the initial position (x, y) in RoboSim GUI to (0, 0) for robot. */
#include <mindstorms.h>
#include <chplot.h>
CMindstorms robot;
double radius = 1.1;      // radius of 1.1 inches
double trackwidth = 4.54;  // the track width, the distance between two wheels
double timeInterval = 0.1; // time interval in 0.1 second 
int numDataPoints;         // number of data points recorded
robotRecordData_t xdata, ydata; // recorded x and y positions 
CPlot plot;                // plotting class

/* begin recording x and y positions */
robot.recordxyBegin(xdata, ydata, timeInterval);

robot.traceOn();
robot.drivexyTo(6, 5, radius, trackwidth);  // line from (0, 0) to (6, 5)

robot.traceOff();
robot.drivexyTo(0, 10, radius, trackwidth); // line from (6, 5) to (0, 10)

robot.traceOn();
robot.drivexyTo(6, 15, radius, trackwidth); // line from (0, 10) to (6, 15)

/* end recording x and y positions */
robot.recordxyEnd(numDataPoints);

/* plot the data */
plot.title("Position");
plot.label(PLOT_AXIS_X, "X (inches)");
plot.label(PLOT_AXIS_Y, "Y (inches)");
plot.axisRange(PLOT_AXIS_X, -5, 15);
plot.axisRange(PLOT_AXIS_Y, 0, 20);
plot.scattern(xdata, ydata, numDataPoints, "green");
plot.sizeRatio(1);
plot.plotting();

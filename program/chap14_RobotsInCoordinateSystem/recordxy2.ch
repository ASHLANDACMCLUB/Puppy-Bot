/* File: recordxy2.ch
   Trace and record the x and y positions for two Mindstorms, 
   plot the acquired data.
   Set the initial position (x, y) in RoboSim GUI to (0, 0) for robot1.
   Set the initial position (x, y) in RoboSim GUI to (6, 0) for robot2. */
#include <mindstorms.h>
#include <chplot.h>
CMindstorms robot1, robot2;
double radius = 1.1;       // radius of 1.1 inches
double trackwidth = 4.54;  // the track width, the distance between two wheels
double timeInterval = 0.1; // time interval in 0.1 second 
int numDataPoints1;        // number of data points recorded for robot1
int numDataPoints2;        // number of data points recorded for robot2
robotRecordData_t xdata1, ydata1; // recorded x and y positions for robot1
robotRecordData_t xdata2, ydata2; // recorded x and y positions for robot2
CPlot plot;                // plotting class

robot2.setLEDColor("red"); // set the robot2 LED color to red

/* begin recording x and y positions */
robot1.recordxyBegin(xdata1, ydata1, timeInterval);
robot2.recordxyBegin(xdata2, ydata2, timeInterval);

robot1.traceOn();
robot2.traceOn();
robot1.drivexyToNB(6, 5, radius, trackwidth);  // line from (0, 0) to (6, 5)
robot2.drivexyTo(12, 5, radius, trackwidth);   // line from (6, 0) to (12, 5)
robot1.drivexyWait();

robot1.traceOff();
robot2.traceOff();
robot1.drivexyToNB(0, 10, radius, trackwidth); // line from (6, 5) to (0, 10)
robot2.drivexyTo(6, 10, radius, trackwidth);   // line from (12, 5) to (6, 10) 
robot1.drivexyWait();

robot1.traceOn();
robot2.traceOn();
robot1.drivexyToNB(6, 15, radius, trackwidth); // line from (0, 10) to (6, 15)
robot2.drivexyTo(12, 15, radius, trackwidth);  // line from (6, 10) to (12, 15)
robot1.drivexyWait();

/* end recording x and y positions */
robot1.recordxyEnd(numDataPoints1);
robot2.recordxyEnd(numDataPoints2);

/* plot the data */
plot.title("Position");
plot.label(PLOT_AXIS_X, "X (inches)");
plot.label(PLOT_AXIS_Y, "Y (inches)");
plot.axisRange(PLOT_AXIS_X, -5, 15);
plot.axisRange(PLOT_AXIS_Y, 0, 20);
plot.scattern(xdata1, ydata1, numDataPoints1, "green");
plot.scattern(xdata2, ydata2, numDataPoints2, "red");
plot.sizeRatio(1);
plot.plotting();

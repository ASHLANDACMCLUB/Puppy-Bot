/* File: obstaclecourse.ch
   Note: This program uses drivexyTo() to move a Mindstorms to 
   multiple points in an obstacle course marked by the configuration file
   obstaclecourse.xml
   Set the initial position (x, y) in RoboSim GUI to (0, 0) for the robot. */
#include <chplot.h>    /* for CPlot */
#include <mindstorms.h>   /* for CMindstorms */
CPlot plot;
CMindstorms robot;
double radius = 1.1;       // radius of 1.1 inches
double trackwidth = 4.54;  // the track width, the distance between two wheels
double speed = 4.5;        // the speed of the robot in inches per second

/* set the speed for a two-wheel robot */
robot.setSpeed(speed, radius);

/* move the robot to specified points */
robot.drivexyTo(12, 5.5, radius, trackwidth);
robot.drivexyTo(24, 30, radius, trackwidth);
robot.drivexyTo(36, 10, radius, trackwidth);
robot.drivexyTo(48, 5, radius, trackwidth);

/* plot the points and obstacle course */
plot.title("");
plot.label(PLOT_AXIS_X, "x (in)");
plot.label(PLOT_AXIS_Y, "y (in)");
/* mark points */
plot.point(0, 0);
plot.point(12, 5.5);
plot.point(24, 30);
plot.point(36, 10);
plot.point(48, 5);

/* make obstacle course */
plot.line(-7.2, 0, 9.77, 7.78);
plot.line(9.77, 7.78, 23.73, 36.28);
plot.line(23.73, 36.28, 36+1.75, 12.9);
plot.line(37.75, 12.9, 48, 8.63);
plot.line(7.2, 0, 14.22, 3.22);
plot.line(14.22, 3.22, 24.27, 23.73);
plot.line(24.27, 23.73, 36-1.75, 7.1);
plot.line(36-1.75, 7.1, 48, 1.37);
plot.axisRange(PLOT_AXIS_X, -10, 50); // set the x-axis range
plot.axisRange(PLOT_AXIS_Y, 0, 60);   // set the y-axis range
plot.sizeRatio(1);
plot.plotting();

/* File: polynomial.ch
   Note: This program uses drivexyTo() available in RoboSim only.
   Set the initial position (x, y) in RoboSim GUI to (-6, 5.5) for the robot.

   A robot moves along a polynomial curve y = 0.5(x+5)(x-5) for x from -6 to 6.
   Plot the polynomial y for x from -6 to 6 with 500 points.
   The range of x-axis is from -12 to 12.
   The range of y-axis is from -15 to 12. 
   The tics range for x and y axes is 1. */
#include <chplot.h>    
#include <mindstorms.h> 
CPlot plot;
CMindstorms robot;
double radius = 1.1;       // radius of 1.1 inches
double trackwidth = 4.54;  // the track width, the distance between two wheels
double x, y;               // x and y coordinates

double func(double x) {
    return 0.5*(x+5)*(x-5);
}

// uncomment line below for controlling hardware robot
//robot1.initPosition(-6, -5.5, 90);

robot.setSpeed(3, 1.1);

/* move the robot along the polynomial curve */
for(x=-6; x<=6.1; x=x+0.4) {
    y = func(x);
    printf("drivexyTo(x, y) = (%lf, %lf)\n", x, y);
    robot.drivexyTo(x, y, radius, trackwidth);
}

/* plot the polynomial curve */
plot.title("y = 0.5(x+5)(x-5)");
plot.label(PLOT_AXIS_X, "x");
plot.label(PLOT_AXIS_Y, "y");
plot.axisRange(PLOT_AXIS_X, -12, 12);
plot.axisRange(PLOT_AXIS_Y, -15, 12);
plot.ticsRange(PLOT_AXIS_X, 1);
plot.ticsRange(PLOT_AXIS_Y, 1);
plot.func2D(-6, 6, 500, func);
plot.plotting();

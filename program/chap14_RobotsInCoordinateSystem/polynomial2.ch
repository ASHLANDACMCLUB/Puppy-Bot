/* File: polynomial2.ch
   Note: This program uses drivexyToNB() and drivexyWait() available in RoboSim only.
   Set the initial position (x, y) in RoboSim GUI to (-6, 5.5) for robot1.
   Set the initial position (x, y) in RoboSim GUI to (6, 5.5) for robot2.

   robot1 moves along a polynomial curve y = 0.5(x+5)(x-5) for x from -6 to 6.
   robot2 moves along a polynomial curve y = 0.5(x-7)(x-17) for x from 6 to 18. */
#include <chplot.h>    
#include <mindstorms.h>  
CPlot plot;
CMindstorms robot1;
CMindstorms robot2;
double radius = 1.1;       // radius of 1.1 inches
double trackwidth = 4.54;  // the track width, the distance between two wheels
double x, y1, y2;          // x and y coordinates

double func(double x) {
    return 0.5*(x+5)*(x-5);
}

double func2(double x) {
    return 0.5*(x-7)*(x-17);
}

/* change the default green color to red for robot 1 */
robot1.setLEDColor("red");

/* move the robot along the polynomial curve */
for(x=-6; x<=6; x=x+0.4) {
    y1 = func(x);
    y2 = func2(x+12);
    robot1.drivexyToNB(x, y1, radius, trackwidth);
    robot2.drivexyTo(x+12, y2, radius, trackwidth);
    robot1.drivexyWait();
}

/* plot the polynomial curve */
plot.title("");
plot.label(PLOT_AXIS_X, "x");
plot.label(PLOT_AXIS_Y, "y");
plot.axisRange(PLOT_AXIS_X, -12, 24);
plot.axisRange(PLOT_AXIS_Y, -15, 12);
plot.ticsRange(PLOT_AXIS_X, 1);
plot.ticsRange(PLOT_AXIS_Y, 1);
plot.func2D(-6, 6, 500, func);
plot.legend("y = 0.5(x+5)(x-5)");
plot.func2D(6, 18, 500, func2);
plot.legend("y = 0.5(x-7)(x-17)");
plot.plotting();

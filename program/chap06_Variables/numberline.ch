/* File: numberline.ch 
   Arithmetic operation 0+12-5+3 in number line of integer */
#include <chplot.h> 
CPlot plot;

plot.numberLine(0, 12, -5, 3);
plot.label(PLOT_AXIS_X, "Distance 12-5+3 (inches)");
plot.plotting();

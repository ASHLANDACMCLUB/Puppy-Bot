/* File: batterytest3.ch
   Get the battery voltage every 5 minutes and store it in a file until the battery dies.
   Then plot voltage vs. time from the file. */
#include <mindstorms.h>
#include <chplot.h>
CMindstorms robot;
CPlot plot;
double time = 300; // 5 minutes = 5 * 60 seconds = 300 seconds
double totalTime = 0;   // a variable to keep track of the total time in seconds.
double voltage = 4.2; // a starting value for v, so that the program enters the while loop.
string_t filename = "voltage.txt";
FILE * stream;  // this will be the file stream

stream = fopen("voltage.txt", "w");
if(stream == NULL)
{
    printf("Error: cannot open 'voltage.txt'\n");
    exit(-1);
}

// repeat the following until either voltage < 3.3, when battery should die.
while (voltage >= 3.3){

    // moveTime for 5 minutes
    robot.moveTime(time);
    
    // add 5 minutes to total time
    totalTime = totalTime + time;

    // get the battery voltage v
    robot.getBatteryVoltage(voltage);
    
    // store time and voltage values in a file
    fprintf(stream, "%lf %lf\n", totalTime, voltage);
    
    // print current time and voltage to console
    printf("Time in seconds: %lf,  Battery voltage: %lf\n", totalTime, voltage);    
}
fclose(stream);

plot.title("Remaining Battery Voltage vs. Time");
plot.label(PLOT_AXIS_X, "time (seconds)");
plot.label(PLOT_AXIS_Y, "battery voltage (volts)");
plot.dataFile("voltage.txt");
plot.plotting();

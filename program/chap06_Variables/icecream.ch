/* File: icecream.ch
   Calculate the cost for 5.5 ounces of the ice cream.
   The ice cream is sold by weight. $0.47 per ounce. */

/* declare variables weight and cost */
double weight, cost;

/* initialize weight in lb */
weight = 5.5;

/* calculate the cost*/
cost = 0.47 * weight;

/* display the cost as output */
printf("The ice cream costs $%.2lf \n", cost);

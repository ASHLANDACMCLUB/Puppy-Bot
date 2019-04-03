/* File: icecream2.ch
   Calculate the cost for the ice cream */

/* declare variables weight and cost */
double weight, cost;

/* get the user input for the value of the variable weight */
printf("Welcome to the Amazing Ice Cream Shop\n");
printf("We sell ice cream by weight, $0.47 per ounce.\n");
printf("Enter the weight in ounces.\n");
scanf("%lf", &weight);

/* calculate the cost */
cost = 0.47 * weight;

/* display the cost as output */
printf("The ice cream costs $%.2lf \n", cost);
printf("Thank you.\n");

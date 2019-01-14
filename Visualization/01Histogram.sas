/*** Histogram with Curve Fitting ***/

/*PROC UNIVARAITE DATA = DATASET;*/
proc univariate data = sashelp.cars noprint;
/*HISTOGRAM variables;*/
histogram horsepower
/ 
normal ( 
   /*EST: the procedure calculates a maximum likelihood estimate for paramater */
   mu = est
   sigma = est
   color = blue
   w = 2.5 
)
barlabel = percent
midpoints = 50 to 500 by 50;
run;
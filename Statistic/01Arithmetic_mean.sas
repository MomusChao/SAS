/*
PROC MEANS DATA = DATASET;
CLASS Variables ;
VAR Variables;
*/

/*SAS dataset: CARS*/
/*MAXDEC: maximum digits after decimal place to be 2 */
PROC MEANS DATA = sashelp.CARS Mean SUM MAXDEC=2;
RUN;

/* selected variables */
PROC MEANS DATA = sashelp.CARS mean SUM MAXDEC=2 ;
var Cylinders MPG_City Length;
RUN;

/*Mean by Class*/
PROC MEANS DATA = sashelp.CARS mean SUM MAXDEC=2;
class make type;
var horsepower;
RUN;
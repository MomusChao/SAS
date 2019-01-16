/*
PROC CORR DATA = dataset options;
VAR variable;
*/

PROC SQL;
create table CARS_table as
SELECT invoice, horsepower, length, weight
   FROM 
   SASHELP.CARS
   WHERE make in ('Audi','BMW')
;
RUN;

proc corr data = cars1 ;
VAR horsepower weight ;
run;

/* Correlation Between All Variables */
proc corr data = CARS_table ;
run;

/* Correlation Matrix */
ods graphics on;
proc corr data = CARS_table plots = matrix ;
VAR length weight ;
run;
ods graphics on;
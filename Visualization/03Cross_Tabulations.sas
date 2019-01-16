/*
PROC FREQ DATA = dataset;
TABLES variable_1 * Variable_2;
*/

PROC SQL;
create table CARS01 as
SELECT make, type, invoice, horsepower, length, weight
   FROM 
   SASHELP.CARS
   WHERE make in ('Audi','BMW')
;
RUN;

proc FREQ data = CARS01;
tables make*type; 
run;
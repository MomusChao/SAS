/* PROC means DATA = dataset STD; */

PROC SQL;
create table CARS_temp as
SELECT make,horsepower, length, weight
   FROM 
   SASHELP.CARS
   WHERE make in ('Audi','BMW')
;
RUN;

proc means data = CARS_temp STD;
run;
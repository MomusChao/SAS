/*
PROC SGPLOT DATA = DATASET;
VBAR variables;
RUN;
*/

PROC SQL;
create table CARS1 as
SELECT make, model, type, invoice, horsepower, length, weight
   FROM 
   SASHELP.CARS
   WHERE make in ('Audi','BMW')
;
RUN;

proc SGPLOT data = work.cars1;
vbar length ;
title 'Lengths of cars';
run;
quit;

/* Stacked Bar chart */
proc SGPLOT data = work.cars1;
vbar length /group = type ;
title 'Lengths of Cars by Types by Stacked Bar Chart';
run;
quit;

/* Clustered Bar chart */
proc SGPLOT data = work.cars1;
vbar length /group = type GROUPDISPLAY = CLUSTER;
title 'Cluster of Cars by Types by Clustered Bar Chart';
run;
quit;
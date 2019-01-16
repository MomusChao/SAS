PROC SQL;
create table cars_table as
SELECT make, model, type, invoice, horsepower, length, weight
   FROM SASHELP.CARS
   WHERE make in ('Audi','Ford')
;
RUN;

PROC SGPLOT  DATA = cars_table;
   /* two variables in box plot */
   VBOX horsepower 
   / category = type;
   title 'Box plot';
RUN; 
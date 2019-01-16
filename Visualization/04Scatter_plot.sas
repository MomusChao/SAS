PROC SQL;
create table Tabel_CARS as
SELECT make, model, type, invoice, horsepower, length, weight
FROM SASHELP.CARS
WHERE make in ('Audi','BMW')
;
RUN;

PROC sgscatter  DATA = Tabel_CARS;
   PLOT horsepower * Invoice 
   / datalabel = make group = type grid;
   title 'Scatter Plot';
RUN;

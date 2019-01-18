PROC SQL;
create table CARS_table as
SELECT make, model, type, invoice, horsepower, length, weight
FROM SASHELP.CARS
WHERE make in ('Audi','Ford')
;
RUN;

PROC TEMPLATE;
   DEFINE STATGRAPH pie;
      BEGINGRAPH;
         LAYOUT REGION;
            PIECHART CATEGORY = type /
            DATALABELLOCATION = OUTSIDE
            CATEGORYDIRECTION = CLOCKWISE
            START = 90 NAME = 'pie';
            DISCRETELEGEND 'pie' /
            TITLE = 'Title: Sample Car Types';
         ENDLAYOUT;
      ENDGRAPH;
   END;
RUN;
PROC SGRENDER DATA = CARS_table
            TEMPLATE = pie;
RUN;
/* PROC SORT DATA=original dataset OUT=Sorted dataset;
  BY variable name; */

DATA Mo_table; 
  INPUT VIP_ID VIP_name $ Cost; 
DATALINES; 
0001 Momus 3766
0002 Lucas 1544
0003 Jenny 4642
;
RUN;

PROC SORT DATA = Mo_table OUT=Sorted_Cost ;
  BY Cost;
RUN ;
 
PROC PRINT DATA = Sorted_Cost;
RUN ; 

/** DESCENDING **/
DATA Mo_table; 
  INPUT VIP_ID VIP_name $ Cost; 
DATALINES; 
0001 Momus 3766
0002 Lucas 1544
0003 Jenny 4642
;
RUN;

PROC SORT DATA = Mo_table OUT=Sorted_Cost ;
  BY DESCENDING Cost;
RUN ;
 
PROC PRINT DATA = Sorted_Cost;
RUN ; 

/** Sorting Multiple Variables **/
DATA Mo_table; 
  INPUT VIP_ID VIP_name $ Cost Cost2; 
DATALINES; 
0001 Momus 3766 332
0002 Lucas 1544 684
0003 Jenny 4642 777
0004 Ken 4642 687
;
RUN;

PROC SORT DATA = Mo_table OUT=Sorted_Cost ;
  BY Cost Cost2;
RUN ;
 
PROC PRINT DATA = Sorted_Cost;
RUN ; 
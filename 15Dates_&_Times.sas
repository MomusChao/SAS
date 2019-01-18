DATA Mo_table;
INPUT  @1 DOJ1 mmddyy10. @12 DOJ2 mmddyy10. ;
format  DOJ1 worddate20.  DOJ2 date11.;
DATALINES;
02/10/2012 06/08/2018 
;
PROC PRINT DATA = Mo_table;
RUN;

/***************************************/
DATA temp_table;
    current01 = date();
	current02 = today();
    format current01 current02 date9.;
RUN;

PROC PRINT data=temp_table;
	var current01 current02;
RUN;


/***** Reference *****/
/* https://newonlinecourses.science.psu.edu/stat481/node/72/ */

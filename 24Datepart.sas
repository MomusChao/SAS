/* Extracts the date from a SAS datetime value */
DATA temp_table;
	a ='01feb94:8:45'dt;
	b = datepart(a);
	format b worddate.;
RUN;

proc print DATA = temp_table;
run;

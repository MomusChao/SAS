/* raw data */
proc print data = sashelp.class;
run;

/* removing duplicates */
proc sql;
create table temp01 as select distinct weight from sashelp.class;
quit;
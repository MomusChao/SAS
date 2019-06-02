/* raw data */
proc print data = sashelp.class;
run;

/* rename variables */
proc sql;
create table temp01 as select name, age, weight, (weight*10) as NewWeight from sashelp.class;
quit;

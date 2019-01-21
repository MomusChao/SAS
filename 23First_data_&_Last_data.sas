DATA Mo_table;
INPUT VIP_ID VIP_NAME $ Score;
DATALINES;
0001 Momus 99
0002 Mary 97
0003 Jerry 96
0004 Jeff 98

0001 Momus2 97
0001 Momus3 96
0002 Mary2 98
0002 Mary3 97
0002 Mary4 96
0004 Jerry 98
;

/* sort data */
DATA Sort_data;
set Mo_table;
PROC SORT;
by VIP_ID;


/* First data */
DATA First_data;
set Sort_data;
by VIP_ID;
if first.VIP_ID then output;
run;

/* last data */
DATA Last_data;
set Sort_data;
by VIP_ID;
if last.VIP_ID then output;
run;
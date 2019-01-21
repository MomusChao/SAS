DATA Mo_table;
INPUT VIP_ID VIP_NAME $ Score;
DATALINES;
0001 Momus 99
0002 Mary 97
0003 Jerry 96
0004 Jeff 98
;

/* create new column */
DATA Id NewID;
set Mo_table;
Id = VIP_ID;
NewID = VIP_ID;
run;
DATA Mo_table;
INPUT VIP_ID VIP_NAME $ Score;
DATALINES;
0001 Momus 99
0003 Mary 97
0002 Jerry 96
;

DATA Mo_table02;
SET Mo_table;
PROC SORT;
by VIP_ID;

PROC PRINT; RUN;
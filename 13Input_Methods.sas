/* 01 List Input Method */
DATA Mo_table;
INPUT VIP_ID VIP_NAME $;
DATALINES;
0001 Momus
0002 Mary
0003 Jerry
;
PROC PRINT DATA = Mo_table;
RUN; 

/* 02 Named Input Method */
DATA Mo_table2;
INPUT VIP_ID= VIP_NAME= $;
DATALINES;
VIP_ID=0001 VIP_NAME=Momus
VIP_ID=0002 VIP_NAME=Mary
VIP_ID=0003 VIP_NAME=Jerry
;
PROC PRINT DATA = Mo_table2;
RUN; 

/* Column Input Method */
DATA Mo_table3;
INPUT VIP_ID 1-5 VIP_NAME $ 6-10;
DATALINES;
0001 Momus
0002 Mary
0003 Jerry
;
PROC PRINT DATA = Mo_table3;
RUN; 

/* Formatted Input Method */

DATA Mo_table4;
INPUT @1 VIP_ID @6 VIP_NAME $;
DATALINES;
0001 Momus
0002 Mary
0003 Jerry
;
PROC PRINT DATA = Mo_table4;
RUN; 


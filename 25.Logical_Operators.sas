/* raw data */
DATA Mo_table;
INPUT VIP_ID VIP_NAME $;
DATALINES;
0001 Momus
0002 Mary
0003 Jerry
;

/* & AND */
DATA Table01;
SET Mo_table;
If VIP_ID=0001 & VIP_NAME= 'Momus' then Note= 'TOP';
PROC PRINT DATA = Table01;
RUN;

/* | OR */
DATA Table02;
SET Mo_table;
If VIP_ID=0001 | VIP_ID= 0002 then Note= 'TOP';
PROC PRINT DATA = Table02;
RUN;

/* ~ or ^  NOT*/
DATA Table03;
SET Mo_table;
If VIP_ID not IN (0001,0002) then Note= 'TOP';
PROC PRINT DATA = Table03;
RUN;
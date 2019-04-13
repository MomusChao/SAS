/* raw data */
DATA Mo_table;
INPUT VIP_ID VIP_NAME $ Height;
DATALINES;
0001 Momus 181
0002 Mary 163
0003 Jerry 175
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

/* IN */
DATA Table03;
SET Mo_table;
WHERE Height IN (181,175);
RUN;

/* ~ or ^  NOT*/
DATA Table04;
SET Mo_table;
If VIP_ID not IN (0001,0002) then Note= 'TOP';
PROC PRINT DATA = Table03;
RUN;



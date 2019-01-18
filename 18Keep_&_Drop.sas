DATA Mo_table;
INPUT VIP_ID VIP_NAME $;
DATALINES;
0001 Momus
0002 Mary
0003 Jerry
;

DATA Table2;
SET Mo_table (KEEP = VIP_ID);
RUN;

PROC PRINT DATA = Table2;
RUN;

DATA Table3;
SET Mo_table (drop = VIP_ID);
RUN;

PROC PRINT DATA = Table3;
RUN; 
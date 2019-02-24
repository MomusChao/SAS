/* raw data */
DATA Mo_table;
INPUT VIP_ID VIP_NAME $;
DATALINES;
0001 Momus
0002 Mary
0003 Jerry
;

/* keep */
DATA Table2;
SET Mo_table (KEEP = VIP_ID);
RUN;

PROC PRINT DATA = Table2;
RUN;

/* drop */
DATA Table3;
SET Mo_table (drop = VIP_ID);
RUN;

PROC PRINT DATA = Table3;
RUN; 

/* drop method2 */
DATA Table4;
SET Mo_table;
drop VIP_ID;
RUN;

PROC PRINT DATA = Table4;
RUN;

/* dropping variables while printing */
PROC PRINT DATA = Mo_table (drop = VIP_ID);
RUN;
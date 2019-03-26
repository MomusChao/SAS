/* raw data */
DATA MoTable;
INPUT Height;
DATALINES;
178.3
160.2
158.9
178.4
157.2
185.2
177.5
;

/* between and: >= + <= */
Data MoTable1;
Set MoTable;
where Height between 160.2 and 177.5;
PROC PRINT DATA=MoTable1;
RUN;

/*** The between-and operator works only in a "where-expression" ***/
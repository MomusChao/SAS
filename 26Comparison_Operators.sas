/* raw data */
DATA MoTable;
INPUT   Height;
DATALINES;
178.3
160.2
158.9
178.4
157.2
185.2
177.5
;

/* EQ: = */
Data MoTable1;
Set MoTable;
If Height EQ 160.2 THEN Note = "SHORT";
PROC PRINT DATA=MoTable1;
RUN;

/* NE: = */
Data MoTable2;
Set MoTable;
If Height NE 160 THEN Note = "NOT SHORT";
PROC PRINT DATA=MoTable2;
RUN;

/* LT: < */
Data MoTable3;
Set MoTable;
If Height LT 160.2 THEN Note = "SHORT";
PROC PRINT DATA=MoTable3;
RUN;

/* GE: >= */
Data MoTable4;
Set MoTable;
If Height GT 160.2 THEN Note = "SHORT";
PROC PRINT DATA=MoTable4;
RUN;

/* GT: > */
Data MoTable5;
Set MoTable;
If Height GT 160.2 THEN Note = "SHORT";
PROC PRINT DATA=MoTable5;
RUN;

/* GE: >= */
Data MoTable6;
Set MoTable;
If Height GT 160.2 THEN Note = "SHORT";
PROC PRINT DATA=MoTable6;
RUN;

/* IN */
Data MoTable7;
Set MoTable;
If Height IN (160.2,185.2) THEN Note = "SHORT";
PROC PRINT DATA=MoTable7;
RUN;
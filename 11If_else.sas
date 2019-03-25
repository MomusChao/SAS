/* raw data */
DATA MoTable;
INPUT   Height;
LABEL ID = 'Employee ID';
DATALINES;
178.3
160.2
158.9
178.4
157.2
185.2
177.5
;

/** if **/
/* LT: < */
Data MoTable2;
Set MoTable;
If Height LT 160 THEN Note = "SHORT";
PROC PRINT DATA=MoTable2;
RUN;


/* If Then Delete */
Data MoTable3;
Set MoTable;
IF Height < 160 THEN delete;
PROC PRINT DATA = MoTable3;
run;

/* IF THEN ELSE */
Data MoTable4;
Set MoTable;
IF Height < 160 THEN Note = "SHORT";
ELSE Note = "NOT SHORT";
PROC PRINT DATA = MoTable4;
run;


/* If THEN ELSE-IF */
Data MoTable5;
Set MoTable;
IF Height < 160 THEN Note = "SHORT";
ELSE IF 150 <= Height <= 180 THEN Note = "MEDIUM";
ELSE IF 180 < Height THEN Note = "TALL";
PROC PRINT DATA = MoTable5;
run;
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

/* If else then */
Data MoTable2;
Set MoTable;
IF Height < 160 THEN Note = "SHORT";
ELSE IF 150 <= Height <= 180 THEN Note = "MEDIUM";
ELSE IF 180 < Height THEN Note = "TALL";
PROC PRINT DATA = MoTable2;
run;

/* If then delete */
Data MoTable3;
Set MoTable;
IF Height < 160 THEN delete;
PROC PRINT DATA = MoTable3;
run;



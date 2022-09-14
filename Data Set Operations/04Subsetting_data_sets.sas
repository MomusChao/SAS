DATA Mo_table; 
INPUT VIP_ID VIP_name $ Cost; 
DATALINES; 
0001 Momus 3766
0002 Lucas 8544
0003 Jenny 9642
;
RUN;


DATA OnlyDept;
  SET Mo_table;
  KEEP VIP_ID Cost;
  RUN;
  PROC PRINT DATA = OnlyDept; 
RUN; 

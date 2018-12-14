data Mo_table; 
   infile 
   '/MoFolder/Output.csv' dlm=","; 
   input VIP_ID VUP_Name $ VIP_cost;
   run;
   PROC PRINT DATA = Mo_table;
RUN;
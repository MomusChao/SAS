/* Reading ASCII(Text) Data Set */
data TEMP; 
   infile 
   'C:/Users/.../emp_data.txt'; 
   input empID empName $ Dept $;
   run;
   PROC PRINT DATA = TEMP;
RUN;
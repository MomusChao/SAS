/* Reading ASCII(Text) Data Set */
data TEMP; 
   infile 
   'C:/Users/128936/Desktop/SAS reference/Pratice/Data Set Operations/emp_data.txt'; 
   input empID empName $ Dept $;
   run;
   PROC PRINT DATA = TEMP;
RUN;
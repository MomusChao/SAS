/* format variable name format name */

DATA Employee; 
   INPUT empid name $ Score Sex $ ; 
   format name $upcase9. ;
DATALINES; 
1 Leo 89 M 		 
2 Timon 77 	F	
3 Terry 59 	F 	
;
RUN;
   PROC PRINT DATA = Employee; 
RUN; 
/* same variables */
DATA Table_1; 
   INPUT id name $ Height; 
DATALINES; 
1 Momus 181 
3 Timon 164 
5 John 175 
; 
RUN; 

DATA Table_2; 
   INPUT id name $ Height; 
DATALINES; 
2 Danny 174 
4 Vivy 163 
RUN; 

DATA All_table; 
   SET Table_1 Table_2; 
RUN; 

PROC PRINT DATA = All_table; 
RUN;  


/* Different number of variables */
DATA Table_1; 
   INPUT id name $ Height weight; 
DATALINES; 
1 Momus 181 68
3 Timon 164 55
5 John 175 70
; 
RUN; 

DATA Table_2; 
   INPUT id name $ Height; 
DATALINES; 
2 Danny 174 85
4 Vivy 163 48
RUN; 

DATA All_table; 
   SET Table_1 Table_2; 
RUN; 

PROC PRINT DATA = All_table; 
RUN; 

/* same variables but variable name differs*/ 
DATA Table_1; 
   INPUT id name $ Height weight; 
DATALINES; 
1 Momus 181 68
3 Timon 164 55
5 John 175 70
; 
RUN; 

DATA Table_2; 
   INPUT id namename $ Height; 
DATALINES; 
2 Danny 174 85
4 Vivy 163 48
RUN; 

DATA All_table; 
   SET Table_1 Table_2;
   SET Table_1(RENAME =(name = NewName) ) Table_2(RENAME =(namename = NewName) ); 
RUN; 

PROC PRINT DATA = All_table; 
RUN; 

/* Different variable lengths */
DATA Table_1; 
   INPUT id 1-2 name $ 3-7 Height 8-11; 
DATALINES; 
1 Momus 181
3 Timon 164
5 John 175
; 
RUN; 
DATA Table_2; 
   INPUT id 1-2 name $ 3-6 Height 7-10; 
DATALINES; 
2 Eva 174
4 Vivy 163
RUN; 

DATA All_table; 
   LENGTH name $ 5;
   SET Table_1 Table_2; 
RUN; 
PROC PRINT DATA = All_table; 
RUN; 

/********** set seperatly**********/
data temp1;
input a b c;
cards;
1 2 3
1 2 4
1 2 5
;
run;


data temp2;
input d;
cards;
6
6
6
6
;
run;

/* Set Method 1 */
data temp3;
set temp1 temp2;
run;

/* Set Method 2 */
data temp4;
set temp1;
set temp2;
run;

/***** Causes a variable that is created by an INPUT or assignment statement to retain its value from one iteration of the DATA step to the next *****/

/* without retain */
DATA WITHOUT_retain;
   PUT "Before INPUT:  " _ALL_;
   INPUT X @@;
   PUT "After INPUT:   " _ALL_ /;
DATALINES;
1 2 3 4
;

/* retain */
DATA WITH_retain;
   RETAIN X;
   PUT "Before INPUT:  " _ALL_;
   INPUT X @@;
   PUT "After INPUT:   " _ALL_ /;
DATALINES;
1 2 3 4
;
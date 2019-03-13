/*
PROC FREQ DATA = Dataset ;
TABLES Variable_1 ;
BY Variable_2 ;
*/

/************** example01 **************/
data Mo_temp;
input ID Score $ Score2 Score3 Count;
cards;
6 A 95 98 20
6 A 95 90 20
2 A 100 98 20
2 B 80 85 5
3 B 83 80 5
2 C 75 70 10
3 C 73 70 10
5 C 75 73 10
;
run;

/* To check the distribution of a categorical variable */
proc freq data = Mo_temp;
tables Score;
run;
/* To remove unwanted statistics in the table: not to return cumulative scores */
proc freq data = Mo_temp;
tables Score /nocum;
run;
/* only frequency */
proc freq data = Mo_temp;
tables Score /nopercent nocum;
run;

/* count number of unique values in a variable */
proc freq data = Mo_temp nlevels;
tables Score;
run;

/* Cross Tabulation (2*2Table) */
proc freq data = Mo_temp;
tables Score * Score2;
run; 
/* Show Table in List Form */
proc freq data = Mo_temp;
tables Score * Score2 / list;
run;
/* Hide Unwanted Statistics in Cross Tabulation */
proc freq data = Mo_temp;
tables Score * Score2 / norow nocol nopercent;
run;

/* Request Multiple Tables */
/* The tables y*(x z) statement is equivalent to tables y*x y*z statement. */
proc freq data = Mo_temp;
tables Score * (Score2 Score3) / norow nocol nopercent;
run;

/* The WEIGHT statement is used when we already have the counts */
/* It makes PROC FREQ use count data to produce frequency and crosstabulation tables */
proc freq data = Mo_temp;
tables Score*Count;
weight count;
run;

proc freq data = Mo_temp;
tables Score*Count;
run;

/** Store result in a SAS dataset **/
/* NOPRINT option prevents SAS to print it in results window */
/* The OUT option is used to store result in a data file */
proc freq data = Mo_temp noprint;
tables Score*Score2/ out = temp;
run;

/** Chi-Square Analysis **/
/* measures of association between two categorical variables */
proc freq data = Mo_temp noprint;
tables Score2 * Score3/chisq;
output All out= temp_chi chisq;
run; 

/************** example02 **************/
PROC SQL;
create table CARS_temp as
SELECT make, model, type, invoice, horsepower, length, weight
   FROM 
   SASHELP.CARS
   WHERE make in ('Audi','Ford')
;
RUN;

/* proc freq: the default behavior of PROC FREQ is to ignore missing data. */
proc freq data = CARS_temp ;
tables horsepower; 
by make;
run;
/* including missing data */
proc freq data = CARS_temp ;
tables horsepower/missing; 
by make;
run;


/* multiple variable frequency distribution */
proc freq data = CARS_temp ;
tables make type; 
run;



/************** example03 **************/
data Color;
   input Region Balls $ Bag $ Count @@;
   label Ball  ='Ball Color'
         Bag  ='Bag Color'
         Region='Geographic Region';
   datalines;
1 blue  white   23  1 blue  red     7  1 blue  medium 24
1 blue  dark   11  1 green white   19  1 green red     7
;

proc freq data=Color;
   /*The OUT= option creates the FreqCount data set, which contains the crosstabulation table frequencies.*/
   /*The OUTEXPECT option outputs the expected table cell frequencies to FreqCount */
   /*The SPARSE option includes zero cell frequencies in the output data set.*/
   tables Balls Bag Balls*Bag / out=FreqCount outexpect sparse;
   /*The WEIGHT statement specifies that the variable Count contains the observation weights.*/
   weight Count;
   title 'Ball and Bag Color of Test';
run;

proc print data=FreqCount noobs;
   title2 'Output Data Set from PROC FREQ';
run;
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
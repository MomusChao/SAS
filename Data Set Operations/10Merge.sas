data temp1;
input ID hight;
cards;
001 178
002 182
003 172
;
run;


data temp2;
input ID weight;
cards;
001 68
002 78
003 63
;
run;

/* Merge */
data temp3;
MERGE temp1 temp2;
run;

/********************* Merge with WHERE condition *********************/
/* Sort ID before merge */
PROC SORT DATA = temp1;
BY ID;
RUN;

PROC SORT DATA = temp2;
BY ID;
RUN;

/* WHERE condition applied before merging. It applies separately on each of the 2 data sets before merging. */
data temp4;
MERGE temp1 temp2;
by ID;
WHERE ID <= 2;
run;

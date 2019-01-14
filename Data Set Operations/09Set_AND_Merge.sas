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

/* Merge */
data temp5;
MERGE temp1 temp2;
run;
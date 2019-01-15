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

data temp3;
MERGE temp1 temp2;
run;

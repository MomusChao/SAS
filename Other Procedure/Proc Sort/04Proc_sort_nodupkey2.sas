DATA temp;
INPUT VIP_ID VIP_NAME $ item $ amount;
DATALINES;
0001 Momus apple 6
0002 Mary banana 3
0003 Jerry cherry 5
0001 Momus apple 6
0002 Mary apple 4
0002 Mary cherry 5
;
run;

/* distinct */
proc sort data=temp nodupkey out=temp2;
	by item amount;
run;

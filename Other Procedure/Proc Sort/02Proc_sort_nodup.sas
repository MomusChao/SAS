DATA temp;
INPUT VIP_ID VIP_NAME $ item $ amount;
DATALINES;
0001 Momus apple 6
0002 Mary banana 3
0003 Jerry cherry 5
0001 Momus apple 6
0002 Mary apple 4
;
run;

/* distinct */
proc sort data=temp nodup out=temp2;
	by VIP_ID;
run;

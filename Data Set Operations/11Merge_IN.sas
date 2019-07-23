/** The IN=variable **/

DATA temp1;
INPUT VIP_ID VIP_NAME $;
DATALINES;
0001 Momus
0002 Mary
0003 Jerry
;

DATA temp2;
INPUT VIP_ID VIP_Height;
DATALINES;
0001 181
0002 172
0004 175
;

/* 1: if the data set contributes to the observation */
/* 0: if the data set does not contribute to the observation */
DATA output1;
	merge temp1(in=x) temp2(in=y);
	by VIP_ID;
	if x=1 and y=1;
RUN;

DATA output2;
	merge temp1(in=x) temp2(in=y);
	by VIP_ID;
	if x=1 and y=0;
RUN;

DATA output3;
	merge temp1(in=x) temp2(in=y);
	by VIP_ID;
	if x=0 and y=1;
RUN;

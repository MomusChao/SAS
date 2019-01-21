data test;
	mydate = '02JAN2017'd;
	/* day: unit*/
    /* 7: add seven months */
	day=intnx('day', mydate , 7);
	format mydate day date9.;
run;

data test;
	mydate = '02JAN2017'd;
	/* ”BEGINNING”: the first day */ /* Note: ”BEGINNING”,"MIDDLE","SAME","END"*/ 
	day=intnx('week', mydate , 1,'SAME');
	format mydate day date9.;
run;
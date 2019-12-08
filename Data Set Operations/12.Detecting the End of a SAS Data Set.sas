DATA Mo_table; 
	INPUT VIP_ID VIP_name $ Cost;
	
	DATALINES; 
	0001 Momus 3766
	0002 Lucas 1544
	0003 Jenny 4642
	;
RUN;

Data LastOne;
	set Mo_table end=last;
	if last;
run;
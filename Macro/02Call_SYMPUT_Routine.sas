/** assign a value produced in a data step to a macro variable*/

data temp;
	x = 'Momo';
	call symput('var',x);

	proc print;
	title "Print Out: &var";
run;




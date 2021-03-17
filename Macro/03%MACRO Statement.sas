data person;
   input name $ dept $;
   datalines;
John Sales
Mary Acctng
;


proc sql;
create table t as
select name
from person
;
quit;


%macro Macrotest(item);
   proc sql;
	create table &item. as
	select name, dept
	from person
	;
	quit;
%mend Macrotest;
%Macrotest(Sands)
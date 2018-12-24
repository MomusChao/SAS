/** Macro variables **/
/* Example: &SYSDAY &SYSDATE */
 
proc print data = sashelp.cars;
where make = 'Audi' and type = 'Sports' ;
 TITLE "SYSDAY: &SYSDAY SYSDATE: &SYSDATE";
run;

/***********************************************/
/***** Macro variables definitions (3 Ways)*****/
/*** 1. %let xxx = yyy ***/
/* Macro variables are used in funtion only*/
%let today=%sysfunc(today(),WEEKDATEw.);

/*** 2. Call Symput('xxx','yyy') ***/
%macro test();
data _NULL_;
call symput('Today',put(today(),WEEKDATEw.));
run;

/*** 3. select xxx into: yyy ***/
/* Macro variables are used in funtion only*/
data todaydate;
date=today();
Proc sql noprint;
	select put(date,WEEKDATEw.) into: today
	from todaydate;
quit;


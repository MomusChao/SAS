/** TRIMN('stringval') **/
/* del space from the end of string */
data string_test;
	LENGTH string $ 18 ;
	String1 = 'Hello World, Momus ';
	length_trimmed_string = lengthc(TRIMN(String1));
run;
proc print data = string_test noobs;
run;
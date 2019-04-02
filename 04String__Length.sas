/** Create a String **/
data string_test;
  LENGTH string1 $ 11 String2 $ 5;
  /*String variables of length 11 and 5 */
  String1 = 'Hello World ';
  String2 = 'Momus';
  Joined_strings =  String1 ||String2 ;
run;

/* noobs: Suppress the column in the output that identifies each observation by number*/
proc print data = string_test noobs;
run;
/* LENGTH: set a string length */
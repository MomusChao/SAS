/** SUBSTRN('stringval',position1,position2) **/
/* stringval: String value */


data string_test;
   LENGTH string1 $ 18 ;
   String1 = 'Hello World, Momus';
   sub_string1 = substrn(String1,2,4) ;
   /*Extract from position 2 to 5 */
  
   sub_string2 = substrn(String1,3) ;
   /*Extract from position 3 onwards */
run;
proc print data = string_test noobs;
run;
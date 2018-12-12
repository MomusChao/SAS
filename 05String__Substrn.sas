/** SUBSTRN('stringval',p1,p2) **/
/* stringval: String value */
/* p1: start position */
/* p2: end position */

data string_test;
   LENGTH string1 $ 18 ;
   String1 = 'Hello World, Momus';
   sub_string1 = substrn(String1,2,4) ;
   /*Extract from position 2 to 4 */
   sub_string2 = substrn(String1,3) ;
   /*Extract from position 3 onwards */
run;
proc print data = string_test noobs;
run;


/** Displaying the Current Time **/
/* output: current=22:07:16 */
data temp;
   current=time();
   put current=time.;
run;
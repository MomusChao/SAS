/** %str **/
/* input 1;2 to a */
%let a = %str(1;2);
%put &a;

/* input 1'2 to a */
%let a = %str(1%'2);


/*** Others: %STR, %NRSTR, %NRBQUOTE, %BQUOTE ***/
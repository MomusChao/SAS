/** Macro variables **/
/* Example: &SYSDAY &SYSDATE */
 
proc print data = sashelp.cars;
where make = 'Audi' and type = 'Sports' ;
 TITLE "SYSDAY: &SYSDAY SYSDATE: &SYSDATE";
run;

/* 
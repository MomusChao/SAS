/* 01 */
proc delete data = library_name.Table_name;
run;

/* 02 */
proc sql;
  drop table library_name.Table_name;
quit;

/* 03 */
proc datasets library = library_name;
  delete Table_name;
run;

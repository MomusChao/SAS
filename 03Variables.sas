/** 01 numeric variables **/
/* INPUT VAR1 VAR2 VAR3; */
INPUT VIP_ID Weight Height;
/* Creating a numeric variable */
DATA temp_table;
SET temp_table;
NewPrice=3*OldPrice;
RUN;

/** 02 character variables **/
/* INPUT VAR1 $ VAR2 $ VAR3 $; */
INPUT VIP_name $ Country $ Address $;
/* Creating a character variable */
DATA temp_table;
SET temp_table;
Name='Momus';
RUN;

/** 03 date variables **/
/* INPUT VAR1 DATE11. VAR2 MMDDYY10. */
/* DATEw. Format & MMDDYYxw. Format */
INPUT Enroll_date DATE11. Birthday MMDDYY10. ;
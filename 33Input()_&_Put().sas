** Convert character to numeric - INPUT()
* new_variable = input(original_variable, informat.)

data temp;
   char_var = '1234567';
   numeric_var = input(char_var, 7.);
run;

** Convert numeric values to character - PUT()
* new_variable = put(original_variable, format.)

data temp2;
	num_var = 1234567;
	char_var = put(num_var,7.);
run;


** Comparison
*PUT() always creates character variables
*INPUT() can create character or numeric variables based on the informat
*The source format must match the source variable type in PUT()
*The source variable type for INPUT() must always be character variables

** Reference: http://support.sas.com/kb/24/590.html
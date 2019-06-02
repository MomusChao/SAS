/* Adding text in front of macrovariable */
%let macvar = Taipei;

/* Output: Taipei */
%put &macvar;

/* Output: TaipeiTaiwan */
%put &macvar.Taiwan;

/* Output: Taipei.Taiwan */
%put &macvar..Taiwan;

/*************************************************/
/* Using text with macro variable in data step */
%let val01 = power;

proc print data = sashelp.cars;
run;

/* example01 */
data TempCar;
set sashelp.cars;
if horse&val01 = 220;
run;

/* example02 */
%let val02 = mpg;

data TempCar2;
set sashelp.cars;
if &val02._city ge 20;
run;

/* example03 */
%let val03 = sashelp;

data Temp3;
set &val03..class;
if sex = "M";
run;

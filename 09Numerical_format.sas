/** Varname Formatnamew.d **/
DATA Momotable;
/* without Decimal point */
input x 5.; 
/* decimal numbers: 3  & rounding*/
format x 5.3;
datalines;
8686
12.3
.1234
12.345
PROC PRINT DATA = Momotable;
RUN;
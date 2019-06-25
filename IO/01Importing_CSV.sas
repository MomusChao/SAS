/*PROC IMPORT*/

proc import datafile = '/folders/myfolders/Temp/HealthData.csv'
	out = work.HealthData
	dbms = CSV
	;
run;


/* Data Step */
data work.HealthData_datastep;
	infile '/folders/myfolders/Temp/HealthData.csv'
                 delimiter=','
                 missover
                 firstobs=2;
    format ID 2.;
    format Height 3.;
    format Weight 2.;
    input
    	ID
    	Height
    	Weight;
run;

/* Reference: https://www.sascrunch.com/importing-csv-files.html */ 

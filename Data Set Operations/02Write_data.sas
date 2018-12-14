proc export data=sashelp.cars
   outfile=
 'car_data.txt'
   dbms=dlm;
   delimiter=' ';
  run;
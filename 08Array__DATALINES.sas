/* input data by DATALINES */ 
DATA array_test;
INPUT a1 $ a2 $ a3 $ a4 $ a5 $;
ARRAY VIP_name(5) $ a1-a5;
DATALINES;
momus Louis mark Mary Wendy
;
RUN;
PROC PRINT DATA = array_test;
RUN;
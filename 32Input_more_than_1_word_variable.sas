/*Ampersand(&): when the variable contains two or more words*/

data Temp_table;
input ID Name & $30. Score;
cards;
1 Momus Chao  22
2 Timon Chio  21
3 Besson Wong  33
;
proc print noobs;
run;
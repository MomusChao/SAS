data Mo_temp;
input ID Score $ Score2 Score3 Count;
cards;
6 A 95 98 20
6 A 95 90 20
2 A 100 98 20
2 B 80 85 5
3 B 83 80 5
2 C 75 70 10
3 C 73 70 10
5 C 75 73 10
;
run;

/* 01 Summary*/
PROC TABULATE DATA = Mo_temp;
CLASS ID Count;
TABLE ID,Count;
TITLE "SAMPLE1";
RUN;

/* 02 side by side */
PROC TABULATE DATA = Mo_temp;
CLASS ID Count;
TABLE ID Count;
TITLE "SAMPLE2";
RUN;

/* 03 cross table */
PROC TABULATE DATA = Mo_temp;
CLASS ID Count;
TABLE ID*Count;
TITLE "SAMPLE3";
RUN;

/** 04 Percentage **/
/* F:length setting */
PROC TABULATE DATA = Mo_temp;
CLASS ID Count;
TABLE ID Count,N*F=4.2 PCTN;
TITLE "SAMPLE4";
RUN;

/* 05 1 by multi */
PROC TABULATE DATA = Mo_temp;
CLASS ID Score Count;
TABLE ID, Score*Count*(N*F=4.2 PCTN);
TITLE "SAMPLE4";
RUN;



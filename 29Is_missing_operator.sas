/* raw data */
DATA MoTable;
INPUT ID Height Weight;
DATALINES;
001 178.3 70
002 160.2 .
003 158.9 67
004 178.4 70
005 157.2 .
006 185.2 .
007 177.5 66
;

/** Selecting Missing Values **/
/* missing data default: . */
DATA MissingTable;
SET MoTable;
WHERE Weight is missing;
RUN;

DATA MissingTable2;
SET MoTable;
WHERE Weight is null;
RUN;
data MoTable;
v1=100; v2=200; v3=300; v4=400; v5=500;

/* Get Maximum value */
max_val = MAX(v1,v2,v3,v4,v5);

/* Get Minimum value */
min_val = MIN (v1,v2,v3,v4,v5);

/* Get Median value */
med_val = MEDIAN (v1,v2,v3,v4,v5);

/* Get a random number */
rand_val = RANUNI(0);

/* Get Square root */
SR_val= SQRT(v1);

proc print data = MoTable noobs;
run;
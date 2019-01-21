/** ARRAY ARRAY-NAME(SUBSCRIPT) ($) VARIABLE-LIST ARRAY-VALUES **/
/* Declare an array of length 5 named VIP_ID with values */
ARRAY VIP_ID[5] (12 18 5 62 44);

/* SAS would automatically calculate the number of variables in array */
ARRAY VIP_ID[*] 12 18 5 62 44;

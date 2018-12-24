data test;
     today_date=TODAY();
	 /* “MONTH”: unit*/
	 /* -3: three months ago */
	 /* ”BEGINNING”: the first day */ /* Note: ”BEGINNING”,"MIDDLE","SAME","END"*/ 
     l3m_bday=INTNX(“MONTH”,today_date,-3,”BEGINNING”);
run;
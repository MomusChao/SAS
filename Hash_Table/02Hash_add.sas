data _null_;
	length MoKey $20;
	length MoData $20;
	
	/* Declare the hash object and key and data variables */
	if _N_ = 1 then do;
	   declare hash h();
	   rc = h.defineKey('MoKey');
	   rc = h.defineData('MoData');
	   rc = h.defineDone();
	end;
	
	/* Define constant value for key and data */
	MoKey = 'Momo';
	MoData = 'LaiLai';
	/* Use the ADD method to add the key and data to the hash object */
	rc =h.add();
	if (rc ne 0) then
	   put 'Add failed.';
	
	MoKey = 'Momo';
	/* Use the FIND method to retrieve the data associated with 'Homer' key */
	rc = h.find();
	if (rc = 0) then
	   put MoData=;
	else
	   put 'Key Momo not found.';
run;
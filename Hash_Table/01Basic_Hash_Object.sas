data temp;
input name $ gender $ item $;
datalines;
Momus M Apple
Timon F Banana
Jamie F Cherry
;

data temp2;
input ID name $ weight;
datalines;
15423 Momus 125 
14752 Jamie 130
;

data results;
length name $ 10 item $ 20;
if _n_ = 1 then do;
declare hash Mo(dataset:'temp');
Mo.defineKey('name');
Mo.defineData('item');
Mo.defineDone();
end;

set temp2;
if Mo.find()=0 then
output;
run;
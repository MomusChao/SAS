# Hash Objects

1. **Hash Declaration Options**: 
``` declare hash obj(dataset:'Dataset_name')```
2. **Hash Methods**:
``` obj.defineKey('key_var')```    
``` obj.defineData('data_var')```
``` obj.defineDone()```
3. **Hash Methods (cont.)**:
``` obj.add(key:key_val,data:data_val)```
``` obj.find(key:key_val)```
``` obj.replace(key:key_val,data:data_val)```
``` obj.check(key:key_val)```
``` obj.remove(key:key_val)```
``` obj.clear()```
``` obj.output(dataset:'data_name')```
``` obj.sum(key:key_val,sum:sum_var)```
``` obj.ref(key:key_val)```
``` obj.equals(hash:'hash_obj',result:res_var)```
``` obj.delete()```
4. **Hash Methods (cont.)**:
``` obj.num_items;```
``` obj.item_size;```

#### DESC:
  - **Hash Tables**:
   it's the data structures which were loaded into memory.

#### REFERENCE:

  - https://en.wikipedia.org/wiki/Hash_table
  - https://www.sas.com/content/dam/SAS/en_ca/User%20Group%20Presentations/Regina-User-Group/ShaunKaufmann-IntroHash-Sept2013.pdf

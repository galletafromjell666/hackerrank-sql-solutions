select N,
       if(P is null, 'Root', if((select count(*) from BST where P = B.N)> 0, 'Inner', 'Leaf'))
from BST as B
order by N;
/*
The reason the SQL query only works when using the alias on the BST table (BST as B)
is because it's required to reference the main table inside the sub-query.
The sub-query checks the number of records with the condition P = B.N,
which means it needs to know which table it is referencing with the column P.

By using the alias (BST as B), the main table is referred to as B in the sub-query,
which allows the sub-query to successfully reference the correct table and correctly
check the number of records.
*/

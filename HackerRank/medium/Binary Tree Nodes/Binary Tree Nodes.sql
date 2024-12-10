/*
- find the note type of bt
- order by value of node
*/

SELECT  N,
        CASE
            WHEN P IS NULL THEN 'Root'
            WHEN NOT EXISTS (SELECT  1
                               FROM  BST AS B
                              WHERE  BST.N = B.P) THEN 'Leaf'
            ELSE 'Inner'
         END
  FROM  BST
 ORDER
    BY  N;

/*
-- NOT IN
SELECT  N,
        CASE 
            WHEN P IS NULL THEN 'Root'
            WHEN N NOT IN (SELECT  P
                             FROM  BST
                            WHERE  P IS NOT NULL) THEN 'Leaf'
            ELSE 'Inner'
         END
  FROM  BST
 ORDER
    BY  N;
*/
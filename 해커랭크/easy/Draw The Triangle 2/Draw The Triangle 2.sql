/*
- make recursive cte that contains 1-20 number
- repeat '*' for 1-20
*/

WITH RECURSIVE CTE AS (
    SELECT  1 AS N
     UNION
       ALL
    SELECT  N + 1
      FROM  CTE
     WHERE  N < 20
)
SELECT  REPEAT('* ', N)
  FROM  CTE;
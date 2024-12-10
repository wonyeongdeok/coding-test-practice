/*
- get julia in R rows by desc

- make for number column table by recursive cte 
- print 20 asterisk
*/

WITH RECURSIVE CTE AS(
    SELECT  20 AS N
     UNION
       ALL
    SELECT  N - 1
      FROM  CTE
     WHERE  N > 1
)
SELECT REPEAT('* ', N)
  FROM CTE;
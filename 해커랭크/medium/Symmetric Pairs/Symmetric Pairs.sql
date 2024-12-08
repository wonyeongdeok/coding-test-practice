/*
- query all such symmetric paris
- where x <= y
- order by X
*/

SELECT  X
        ,Y
  FROM  FUNCTIONS 
 WHERE  X = Y 
 GROUP
    BY  X
        ,Y
HAVING  COUNT(*) = 2 

 UNION
   ALL

SELECT  F1.X
        ,F1.Y 
  FROM  FUNCTIONS F1
 INNER
  JOIN  FUNCTIONS F2
    ON  F1.X = F2.Y
   AND  F1.Y = F2.X
 WHERE  F1.X < F1.Y
 
 ORDER
    BY  X;
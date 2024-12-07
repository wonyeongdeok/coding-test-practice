/*
- get name
- where count >= 10

- join companies c and games g on c.company_id = g.publisher_id
*/

SELECT  C.NAME AS NAME
  FROM  COMPANIES C
 INNER
  JOIN  GAMES G
    ON  C.COMPANY_ID = G.PUBLISHER_ID
 GROUP
    BY  C.NAME
HAVING  COUNT(*) >= 10;
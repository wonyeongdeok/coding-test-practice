/*
- 아이디, 이름, 보호 시작
- order by 이름 asc
- order by datetime desc
*/

SELECT  ANIMAL_ID
        ,NAME
        ,DATETIME
  FROM  ANIMAL_INS
 ORDER
    BY  NAME ASC
        ,DATETIME DESC;
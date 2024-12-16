/*
아이디, 이름 조회
where 동뮬 종류는 개, 이름에 el 포함
*/

SELECT  ANIMAL_ID
        ,NAME
  FROM  ANIMAL_INS
 WHERE  ANIMAL_TYPE = 'Dog'
   AND  NAME LIKE '%el%'
 ORDER
    BY  NAME ASC;
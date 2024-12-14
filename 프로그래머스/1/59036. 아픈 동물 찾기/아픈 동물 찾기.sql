/*
아픈 동물 아이디와 이름 조회
order by 아이디 asc
*/

SELECT  ANIMAL_ID
        ,NAME
  FROM  ANIMAL_INS
 WHERE  INTAKE_CONDITION = 'Sick'
 ORDER
    BY  ANIMAL_ID ASC;
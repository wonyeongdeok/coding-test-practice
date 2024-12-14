/*
젊은 동물의 아이디와 이름 출력
*/

SELECT  ANIMAL_ID
        ,NAME
  FROM  ANIMAL_INS
 WHERE  INTAKE_CONDITION != 'Aged'
 ORDER
    BY  ANIMAL_ID;
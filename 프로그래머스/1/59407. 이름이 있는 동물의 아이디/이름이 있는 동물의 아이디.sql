/*
- 동물 ID
- 이름 있는 동물만
- order by 동물 ID asc
*/

SELECT  ANIMAL_ID
  FROM  ANIMAL_INS
 WHERE  NAME IS NOT NULL
 ORDER
    BY  ANIMAL_ID ASC;
/*
- 동물 이름
- 보호소에 가장 먼저 들어온
*/

SELECT  NAME
  FROM  ANIMAL_INS
 WHERE  DATETIME = (SELECT  MIN(DATETIME)
                      FROM  ANIMAL_INS);
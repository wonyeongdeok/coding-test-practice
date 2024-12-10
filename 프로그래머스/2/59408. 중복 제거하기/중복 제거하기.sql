/*
- 동물 이름 개수
- 이름 NULL인 경우 집계 X
- 이름 중복 제거
*/

SELECT  COUNT(DISTINCT NAME)
  FROM  ANIMAL_INS;
/*
가장 최근들어온 동물이 언제 들어왔는지 출력
*/

SELECT  MAX(DATETIME) AS 시간
  FROM  ANIMAL_INS;

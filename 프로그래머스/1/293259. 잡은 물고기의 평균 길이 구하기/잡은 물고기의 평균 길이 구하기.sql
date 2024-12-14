/*
물고기 평균 길이 둘째자리까지 반올림 출력 AS AVERAGE_LENGTH
where if length is null then 10
*/

SELECT  ROUND(AVG(IFNULL(LENGTH, 10)), 2) AVERAGE_LENGTH
  FROM  FISH_INFO;
/*
물고기 수 출력 as fish_count
where 2021년도 잡음
*/

SELECT  COUNT(*) AS FISH_COUNT
  FROM  FISH_INFO
 WHERE  YEAR(TIME) = 2021;
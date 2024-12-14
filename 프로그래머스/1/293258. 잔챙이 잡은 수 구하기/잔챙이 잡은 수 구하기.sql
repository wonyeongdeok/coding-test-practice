/*
물고기 수 출력 as fish_count
where 길이 10cm 이하
*/

SELECT  COUNT(*) AS FISH_COUNT
  FROM  FISH_INFO
 WHERE  LENGTH IS NULL;
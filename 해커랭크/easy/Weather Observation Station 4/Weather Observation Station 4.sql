/*
1. get total number of city
2. get number of distinct city
3. get 1 - 2
*/
SELECT  COUNT(CITY) - COUNT(DISTINCT CITY)
  FROM  STATION;
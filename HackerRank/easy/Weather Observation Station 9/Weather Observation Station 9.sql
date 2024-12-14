-- LEFT
SELECT  DISTINCT CITY
  FROM  STATION
 WHERE  LEFT(CITY, 1) NOT IN ('a', 'e', 'i', 'o', 'u');

/*
-- SUBSTINFG
SELECT  DISTINCT CITY
  FROM  STATION
 WHERE  SUBSTRING(CITY, 1, 1) NOT IN ('a', 'e', 'i', 'o', 'u');
 */
 
 /*
 -- REGEXP
 SELECT  DISTINCT CITY
   FROM  STATION
  WHERE  CITY NOT REGEXP '^[aeiou]';
 */
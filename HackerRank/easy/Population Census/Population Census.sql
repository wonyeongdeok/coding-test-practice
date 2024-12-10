/*
1. righ join city and country on city.ocuntrycode= country.code
2. where continent is aisa
3. sum poupulation of all city
*/
SELECT  SUM(A.POPULATION)
  FROM  CITY AS A
 RIGHT
  JOIN  COUNTRY AS B
    ON  A.COUNTRYCODE=B.CODE
 WHERE  B.CONTINENT = 'Asia';
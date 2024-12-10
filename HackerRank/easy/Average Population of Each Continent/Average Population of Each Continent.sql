/*
0. inner join city and country on countrycode
1. get name of all continents
2. get average city populations
3. round down integer
*/

SELECT  B.CONTINENT
        ,FLOOR(AVG(A.POPULATION))
  FROM  CITY AS A
 INNER
  JOIN  COUNTRY AS B
    ON  A.COUNTRYCODE = B.CODE
 GROUP
    BY  B.CONTINENT;
  
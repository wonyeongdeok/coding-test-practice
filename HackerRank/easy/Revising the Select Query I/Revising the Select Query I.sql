/*
- query all columns
- where population > 100000
- where countrycode is USA
*/

SELECT  *
  FROM  CITY
 WHERE  POPULATION > 100000
   AND  COUNTRYCODE = 'USA';
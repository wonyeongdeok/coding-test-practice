/*
print: name, population, area
condition:
- area >= 3000000
 -population >= 2500000
*/

SELECT
    NAME,
    POPULATION,
    AREA
FROM
    WORLD
WHERE
    AREA >= 3000000
    OR POPULATION >= 25000000;
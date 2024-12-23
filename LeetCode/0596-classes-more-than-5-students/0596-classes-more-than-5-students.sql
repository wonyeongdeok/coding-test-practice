/*
print: class
condition:
 - classes hae at least 5 students
*/

SELECT
    CLASS
FROM
    COURSES
GROUP BY
    CLASS
HAVING
    COUNT(*) >= 5;
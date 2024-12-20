/*
print: name, bonus
condition:
- bonus < 1000
- if no bonus then null
*/

SELECT
    E.NAME,
    B.BONUS
FROM
    EMPLOYEE E
LEFT JOIN
    BONUS B ON E.EMPID = B.EMPID
WHERE
    B.BONUS < 1000
    OR B.BONUS IS NULL;
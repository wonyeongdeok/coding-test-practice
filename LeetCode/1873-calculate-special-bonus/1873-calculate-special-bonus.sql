/*
print: EMPLOYEE_ID, BONUS
condition:
 - bunous 100%
    - if the ID is an odd
    - and name does not start with 'M'
order: EMPLOYEE_ID
*/
SELECT
    EMPLOYEE_ID,
    CASE
        WHEN EMPLOYEE_iD % 2 != 0 AND LEFT(NAME, 1) != 'M' THEN SALARY
        ELSE 0
    END AS BONUS
FROM
    EMPLOYEES
ORDER BY
    EMPLOYEE_ID;
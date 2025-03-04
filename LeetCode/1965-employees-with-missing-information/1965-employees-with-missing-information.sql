/*
print: EMPLOYEE_ID
condition:
 - employees with missing information about name, salary
order: employee_id
*/

WITH MISSING_SALARY AS (
    SELECT
        E.EMPLOYEE_ID
    FROM
        EMPLOYEES AS E
    LEFT JOIN
        SALARIES AS S ON E.EMPLOYEE_ID = S.EMPLOYEE_ID
    WHERE
        S.SALARY IS NULL
),
MISSING_NAME AS (
    SELECT
        S.EMPLOYEE_ID
    FROM
        EMPLOYEES AS E
    RIGHT JOIN
        SALARIES AS S ON E.EMPLOYEE_ID = S.EMPLOYEE_ID
    WHERE
        E.NAME IS NULL
)
SELECT
    EMPLOYEE_ID
FROM
    MISSING_SALARY
UNION
SELECT
    EMPLOYEE_ID
FROM
    MISSING_NAME
ORDER BY
    EMPLOYEE_ID;
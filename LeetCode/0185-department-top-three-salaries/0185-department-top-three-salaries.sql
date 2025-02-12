/*
print: DEPARTMENT, EMPLOYEE, SALARY
condition:
 - A higher earner in a department is an employee who has a salary in the top three unique salaries
 - find employees who are high earners in each departments
*/
WITH DR_DATA AS (
    SELECT
        D.NAME AS DEPARTMENT,
        E.NAME AS EMPLOYEE,
        E.SALARY,
        DENSE_RANK() OVER(PARTITION BY D.NAME ORDER BY E.SALARY DESC) AS DR
    FROM
        EMPLOYEE AS E
    JOIN
        DEPARTMENT AS D ON E.DEPARTMENTID = D.ID
)
SELECT
    DEPARTMENT,
    EMPLOYEE,
    SALARY
FROM
    DR_DATA
WHERE
    DR <= 3;
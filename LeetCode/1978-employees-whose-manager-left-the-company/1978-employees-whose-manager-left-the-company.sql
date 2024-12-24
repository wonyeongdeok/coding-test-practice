/*
print: employee_id
condition:
 - salary less than 30000 AND
 - manager don`t exists
order: employee_id
*/

SELECT
    EMPLOYEE_ID
FROM
    EMPLOYEES
WHERE
    SALARY < 30000
    AND MANAGER_ID NOT IN (SELECT EMPLOYEE_ID FROM EMPLOYEES)
ORDER BY
    EMPLOYEE_ID;
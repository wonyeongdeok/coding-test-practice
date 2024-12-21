/*
print: employee_id, department_id
condition:
- if the flag is 'Y' then primary department
- if the flag is 'N' then no primary department
- if employee belongs to only one department then print department
*/

SELECT
    EMPLOYEE_ID,
    DEPARTMENT_ID
FROM
    EMPLOYEE
WHERE
    PRIMARY_FLAG = 'Y'
    OR EMPLOYEE_ID NOT IN (SELECT
                               EMPLOYEE_ID
                           FROM
                               EMPLOYEE
                           WHERE
                               PRIMARY_FLAG = 'Y');
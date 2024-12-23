/*
print: employee_id, name, reports_count, average_age
 - managers have at least 1 employee
 - average age round to nearest integer
order: employee_id
*/

SELECT
    M.EMPLOYEE_ID,
    M.NAME,
    COUNT(*) AS REPORTS_COUNT,
    ROUND(AVG(E.AGE), 0) AS AVERAGE_AGE
FROM
    EMPLOYEES M
JOIN
    EMPLOYEES E ON M.EMPLOYEE_ID = E.REPORTS_TO
GROUP BY
    M.EMPLOYEE_ID,
    M.NAME
ORDER BY
    M.EMPLOYEE_ID;
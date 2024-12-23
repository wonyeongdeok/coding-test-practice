/*
print: employee_id, name, reports_count, average_age
 - managers have at least 1 employee
 - average age round to nearest integer
order: employee_id
*/

SELECT
    P.EMPLOYEE_ID,
    P.NAME,
    COUNT(*) AS REPORTS_COUNT,
    ROUND(AVG(C.AGE), 0) AS AVERAGE_AGE
FROM
    EMPLOYEES P
JOIN
    EMPLOYEES C ON P.EMPLOYEE_ID = C.REPORTS_TO
GROUP BY
    P.EMPLOYEE_ID
ORDER BY
    P.EMPLOYEE_ID;
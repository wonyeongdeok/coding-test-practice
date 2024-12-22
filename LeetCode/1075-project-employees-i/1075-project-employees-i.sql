/*
print: project_id, average_years
condition:
- round up average_years to 2 digits
*/
SELECT
    PROJECT_ID,
    ROUND(AVG(E.EXPERIENCE_YEARS), 2) AS AVERAGE_YEARS
FROM
    PROJECT P
INNER JOIN
    EMPLOYEE E ON P.EMPLOYEE_ID = E.EMPLOYEE_ID
GROUP BY
    P.PROJECT_ID;
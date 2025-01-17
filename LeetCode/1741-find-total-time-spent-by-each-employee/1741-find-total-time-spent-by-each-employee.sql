/*
PRINT: DAY, EMP_ID, TOTAL_TIME
CONDITION:
 - employee can enter and leave repeatedly
 - spent time = out_time - in_time
*/
SELECT
    EVENT_DAY AS DAY,
    EMP_ID,
    SUM(OUT_TIME - IN_TIME) AS TOTAL_TIME
FROM
    EMPLOYEES
GROUP BY
    EVENT_DAY,
    EMP_ID;
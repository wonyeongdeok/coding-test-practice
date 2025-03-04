/*
PRINT: ID, JAN_REVENUE, FEB_REVENUE, MAR_REVENUE, ..., DEC_REVENUE
*/
SELECT
    ID,
    MAX(CASE WHEN MONTH = 'Jan' THEN REVENUE END) AS 'JAN_REVENUE',
    MAX(CASE WHEN MONTH = 'Feb' THEN REVENUE END) AS 'FEB_REVENUE',
    MAX(CASE WHEN MONTH = 'Mar' THEN REVENUE END) AS 'MAR_REVENUE',
    MAX(CASE WHEN MONTH = 'Apr' THEN REVENUE END) AS 'APR_REVENUE',
    MAX(CASE WHEN MONTH = 'May' THEN REVENUE END) AS 'MAY_REVENUE',
    MAX(CASE WHEN MONTH = 'Jun' THEN REVENUE END) AS 'JUN_REVENUE',
    MAX(CASE WHEN MONTH = 'Jul' THEN REVENUE END) AS 'JUL_REVENUE',
    MAX(CASE WHEN MONTH = 'Aug' THEN REVENUE END) AS 'AUG_REVENUE',
    MAX(CASE WHEN MONTH = 'Sep' THEN REVENUE END) AS 'SEP_REVENUE',
    MAX(CASE WHEN MONTH = 'Oct' THEN REVENUE END) AS 'OCT_REVENUE',
    MAX(CASE WHEN MONTH = 'Nov' THEN REVENUE END) AS 'NOV_REVENUE',
    MAX(CASE WHEN MONTH = 'Dec' THEN REVENUE END) AS 'DEC_REVENUE'
FROM
    DEPARTMENT
GROUP BY
    ID;
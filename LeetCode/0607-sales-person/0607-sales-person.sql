/*
print: NAME
condition:
 - salespersos who did not have any orders related to the company with the name 'RED'
*/
WITH RED_SALESPERSON AS (
    SELECT
        DISTINCT O.SALES_ID
    FROM
        ORDERS AS O
    JOIN
        COMPANY AS C ON O.COM_ID = C.COM_ID
    WHERE
        C.NAME = 'RED'
)
SELECT
    NAME
FROM
    SALESPERSON
WHERE
    SALES_ID NOT IN (SELECT SALES_ID FROM RED_SALESPERSON);
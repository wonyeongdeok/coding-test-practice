/*
PRINT: NAME, BALANCE
CONDITION:
 - balance is higher than 10000
*/
SELECT
    U.NAME,
    SUM(AMOUNT) AS BALANCE
FROM
    USERS AS U
JOIN
    TRANSACTIONS AS T ON U.ACCOUNT = T.ACCOUNT
GROUP BY
    U.NAME
HAVING
    SUM(AMOUNT) > 10000;
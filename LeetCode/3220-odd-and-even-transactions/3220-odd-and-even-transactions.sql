/*
print: TRANSACTION_DATE, ODD_SUM, EVEN_SUM
condition:
 - if there are no odd or even transactions for a specific date, 0
order: TRANSACTION_DATE
*/
SELECT
    TRANSACTION_DATE,
    SUM(CASE
            WHEN AMOUNT % 2 != 0 THEN AMOUNT
            ELSE 0
        END) AS ODD_SUM,
    SUM(CASE
            WHEN AMOUNT % 2 = 0 THEN AMOUNT
            ELSE 0
        END) AS EVEN_SUM
FROM
    TRANSACTIONS
GROUP BY
    TRANSACTION_DATE
ORDER BY
    TRANSACTION_DATE;
/*
print: CUSTOMER_NUMBER
condition:
 - customer who has placed the largest number of orders
*/
SELECT
    CUSTOMER_NUMBER
FROM
    ORDERS
GROUP BY
    CUSTOMER_NUMBER
ORDER BY
    COUNT(*) DESC
LIMIT 1;
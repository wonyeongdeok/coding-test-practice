/*
print: product_id, price
condition:
 - the prices of all products on 2019-08-16
 - assume the price of all products before any change is 10.
*/
WITH RN_DATA AS (
    SELECT
        product_id,
        new_price,
        ROW_NUMBER() OVER (PARTITION BY product_id ORDER BY change_date DESC)  AS RN
    FROM
        products
    WHERE
        DATE_FORMAT(change_date, '%Y-%m-%d') <= '2019-08-16'
)
SELECT
    product_id,
    new_price AS price
FROM
    RN_DATA
WHERE
    RN = 1

UNION ALL

SELECT
    product_id,
    10 AS price
FROM
    products
WHERE
    product_id NOT IN (SELECT product_id FROM RN_DATA);
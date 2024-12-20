/*
print: sell_date, num_sold, products
condition: sold products names should be sorted lexicographically
order: sell_date asc
*/

SELECT
    SELL_DATE,
    COUNT(DISTINCT PRODUCT) AS NUM_SOLD,
    GROUP_CONCAT(DISTINCT PRODUCT ORDER BY PRODUCT) AS PRODUCTS
FROM
    ACTIVITIES
GROUP BY
    SELL_DATE
ORDER BY
    SELL_DATE;
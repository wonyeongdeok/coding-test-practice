/*
print: product_id, first_year, quantity, price
conditions:
 - for the first year of every product sold
*/
WITH MIN_YEARS AS (
    SELECT
        DISTINCT PRODUCT_ID,
        MIN(YEAR) OVER(PARTITION BY PRODUCT_ID) AS FIRST_YEAR
    FROM
        SALES
)
SELECT
    M.PRODUCT_ID,
    M.FIRST_YEAR,
    S.QUANTITY,
    S.PRICE
FROM
    MIN_YEARS AS M
JOIN
    SALES AS S ON M.PRODUCT_ID = S.PRODUCT_ID
               AND M.FIRST_YEAR = S.YEAR

/*
print: sale_id, product_name, year, price
*/

SELECT
    P.PRODUCT_NAME,
    S.YEAR,
    S.PRICE
FROM
    SALES AS S
INNER JOIN
    PRODUCT AS P ON S.PRODUCT_ID = P.PRODUCT_ID;
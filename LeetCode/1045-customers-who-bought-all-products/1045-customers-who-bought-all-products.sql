/*
print: CUSTOMER_ID
conditions: 
 - customer who bought all the products
*/
SELECT
    DISTINCT C.CUSTOMER_ID
FROM
    CUSTOMER AS C
JOIN
    PRODUCT AS P ON C.PRODUCT_KEY = P.PRODUCT_KEY
GROUP BY
    C.CUSTOMER_ID
HAVING
    COUNT(DISTINCT C.PRODUCT_KEY) = (SELECT
                                         COUNT(PRODUCT_KEY)
                                     FROM
                                         PRODUCT);
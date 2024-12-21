/*
print: product_name, unit
condition
- product_name that have at least 100 units ordered in 2020-02
*/

SELECT
    P.PRODUCT_NAME,
    SUM(UNIT) UNIT
FROM
    PRODUCTS AS P
INNER JOIN
    ORDERS AS O ON P.PRODUCT_ID = O.PRODUCT_ID
WHERE
    DATE_FORMAT(ORDER_DATE, '%Y-%m') = '2020-02'
GROUP BY
    P.PRODUCT_NAME
HAVING
    SUM(UNIT) >= 100;
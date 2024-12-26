/*
print: product_id, average_price
condition:
 - average_price should be rounded to 2 decimal places
 - if a product have not any sold units, then average_price is 0
*/

SELECT
    P.PRODUCT_ID,
    COALESCE(
        ROUND(SUM(P.PRICE * U.UNITS) / SUM(U.UNITS), 2)
     , 0) AS AVERAGE_PRICE
FROM
    PRICES P
LEFT JOIN
    UNITSSOLD U ON P.PRODUCT_ID = U.PRODUCT_ID
    AND U.PURCHASE_DATE BETWEEN START_DATE AND END_DATE
GROUP BY
    P.PRODUCT_ID;
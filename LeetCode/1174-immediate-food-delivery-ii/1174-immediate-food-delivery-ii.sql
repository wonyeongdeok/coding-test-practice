/*
print: IMMEDIATE_PERCENTAGE
conditions:
 - if preffered delivery date is the same as the order date, then the order is 'immediate'
 - otherwise, 'scheduled'
 - first order is only one
 - find the percentage of immediate orders in the first orders
 - round up to 2 decimal places
*/
WITH RN_DATA AS (
    SELECT
        ORDER_DATE,
        CUSTOMER_PREF_DELIVERY_DATE,
        ROW_NUMBER() OVER (PARTITION BY CUSTOMER_ID ORDER BY ORDER_DATE) AS RN
    FROM
        DELIVERY
),
FIRST_DATE AS (
    SELECT
        ORDER_DATE,
        CUSTOMER_PREF_DELIVERY_DATE
    FROM
        RN_DATA
    WHERE
        RN = 1
)
SELECT
    ROUND(
        SUM(ORDER_DATE = CUSTOMER_PREF_DELIVERY_DATE) / COUNT(*)
    , 2) * 100 AS immediate_percentage 
FROM
    FIRST_DATE
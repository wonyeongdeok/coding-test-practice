/*
print: visited_on, amount, average_amount
condition:
 - compute moving average(current day + 6 days before) as average_amount
 - round up to 2 decimal places
order:
 - visited_on
*/
WITH VISITED_ON_GROUP AS (
    SELECT
        visited_on,
        SUM(amount) AS amount
    FROM
        customer
    GROUP BY
        visited_on
),
MOVING_AVG AS (
    SELECT
        visited_on,
        SUM(amount) OVER (ORDER BY visited_on
                          ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS amount,
        AVG(amount) OVER (ORDER BY visited_on
                          ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS average_amount,
        ROW_NUMBER() OVER (ORDER BY visited_on) AS rn
    FROM
        VISITED_ON_GROUP
),
RESULT AS (
    SELECT
        visited_on,
        amount,
        ROUND(average_amount, 2) AS average_amount
    FROM
        MOVING_AVG
    WHERE
        rn >= 7
)
SELECT
    visited_on,
    amount,
    average_amount
FROM
    result
ORDER BY
    visited_on;
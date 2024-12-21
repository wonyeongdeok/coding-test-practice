/*
print: customer_id, count_no_trans
condition:
- user who visted without making any transactions
and
- count_no_trans means that the number of times they made these types of visits
*/

SELECT
    CUSTOMER_ID,
    COUNT(*) AS COUNT_NO_TRANS
FROM
    VISITS V
LEFT JOIN
    TRANSACTIONS T ON V.VISIT_ID = T.VISIT_ID
WHERE
    T.TRANSACTION_ID IS NULL
GROUP BY
    CUSTOMER_ID;
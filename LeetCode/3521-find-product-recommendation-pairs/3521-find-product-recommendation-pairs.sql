WITH pairs AS (
    SELECT
        a.product_id AS product1_id,
        b.product_id AS product2_id,
        COUNT(*) AS customer_count
    FROM
        ProductPurchases a
    JOIN
        ProductPurchases b ON a.user_id = b.user_id
                           AND a.product_id < b.product_id
    GROUP BY
        a.product_id,
        b.product_id
    HAVING
        COUNT(*) >= 3
)
SELECT
    product1_id,
    product2_id,
    (SELECT category FROM ProductInfo WHERE product1_id = product_id) AS product1_category,
    (SELECT category FROM ProductInfo WHERE product2_id = product_id) AS product2_category,
    customer_count
FROM
    pairs
ORDER BY
    customer_count DESC,
    product1_id,
    product2_id;
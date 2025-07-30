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
    p.product1_id,
    p.product2_id,
    pi1.category AS product1_category,
    pi2.category AS product2_category,
    p.customer_count
FROM
    pairs p
LEFT JOIN
    ProductInfo pi1 ON p.product1_id = pi1.product_id
LEFT JOIN
    ProductInfo pi2 On p.product2_id = pi2.product_id
    
ORDER BY
    customer_count DESC,
    product1_id,
    product2_id;
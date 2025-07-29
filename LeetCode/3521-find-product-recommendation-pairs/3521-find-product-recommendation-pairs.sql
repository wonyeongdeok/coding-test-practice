/*
1. Identify distinct product pairs frequently purchased together by the same customers
2. For each product pair, determine how many customers purchased both products
3. A product pair is considered for recommendation if at least 3 different customers have purchased both products.
4. order by customer_count desc, product1_id asc, product2_id asc
*/

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
),

product1 AS (
    SELECT
        a.product1_id,
        a.product2_id,
        a.customer_count,
        b.category AS product1_category
    FROM
        pairs a
    LEFT JOIN
        ProductInfo b ON a.product1_id = b.product_id
),

product2 AS (
    SELECT
        a.product1_id,
        a.product2_id,
        a.customer_count,
        a.product1_category,
        b.category AS product2_category
    FROM
        product1 a
    LEFT JOIN
        ProductInfo b On a.product2_id = b.product_id
)

SELECT
    product1_id,
    product2_id,
    product1_category,
    product2_category,
    customer_count
FROM
    product2
ORDER BY
    customer_count DESC,
    product1_id,
    product2_id;
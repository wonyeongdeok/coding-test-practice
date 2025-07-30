/*
1. Identify distinct product pairs frequently purchased together by the same customers
2. For each product pair, determine how many customers purchased both products
3. A product pair is considered for recommendation if at least 3 different customers have purchased both products.
4. order by customer_count desc, product1_id asc, product2_id asc
*/

-- 유저별 상품 쌍 만들기
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
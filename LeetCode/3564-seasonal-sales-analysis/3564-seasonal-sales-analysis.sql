WITH seasons AS (
    SELECT
        CASE WHEN MONTH(a.sale_date) IN (12, 1, 2) THEN 'Winter'
             WHEN MONTH(a.sale_date) IN (3, 4, 5) THEN 'Spring'
             WHEN MONTH(a.sale_date) IN (6, 7, 8) THEN 'Summer'
             ELSE 'Fall'
        END AS season,
        b.category,
        a.quantity,
        a.quantity * a.price AS revenue
    FROM
        sales a
    JOIN
        products b ON a.product_id = b.product_id
),
quantity_price AS (
    SELECT
        season,
        category,
        SUM(quantity) AS total_quantity,
        SUM(revenue) AS total_revenue
    FROM
        seasons
    GROUP BY
        season,
        category
),
ranking AS (
SELECT
    season,
    category,
    total_quantity,
    total_revenue,
    ROW_NUMBER() OVER(PARTITION BY season ORDER BY total_quantity DESC, total_revenue DESC) AS rn
FROM
    quantity_price
)

SELECT
    season,
    category,
    total_quantity,
    total_revenue
FROM
    ranking
WHERE
    rn = 1
ORDER BY
    season;
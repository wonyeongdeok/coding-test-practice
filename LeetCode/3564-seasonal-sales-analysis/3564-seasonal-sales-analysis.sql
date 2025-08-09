/*
- find the most popular product category for each season
- The popularity of a category is determined by the total quantity sold in that season.
- If there is a tie, select the category with the highest total revenue(quantity * price)
order by season asc
*/

WITH seasons AS (
    SELECT
        product_id,
        CASE WHEN MONTH(sale_date) IN (12, 1, 2) THEN 'Winter'
             WHEN MONTH(sale_date) IN (3, 4, 5) THEN 'Spring'
             WHEN MONTH(sale_date) IN (6, 7, 8) THEN 'Summer'
             ELSE 'Fall'
        END AS season,
        quantity,
        quantity * price AS revenue
    FROM
        sales
),
ranking AS (
    SELECT
        a.season,
        b.category,
        SUM(a.quantity) AS total_quantity,
        SUM(a.revenue) AS total_revenue,
        ROW_NUMBER() OVER(PARTITION BY a.season
                          ORDER BY SUM(a.quantity) DESC, SUM(a.revenue) DESC) AS RN
    FROM
        seasons a
    JOIN
        products b ON a.product_id = b.product_id
    GROUP BY
        a.season,
        b.category
)

SELECT
    season,
    category,
    total_quantity,
    total_revenue
FROM
    ranking
WHERE
    RN = 1
ORDER BY
    season;
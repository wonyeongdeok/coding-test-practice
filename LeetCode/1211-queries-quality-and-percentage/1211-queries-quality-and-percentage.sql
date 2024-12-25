/*
print: query_name, quality, poor_query_percentage
condition:
 - quality is average of rating / position
 - poor_query_percentage is ratio of less than 3 in rating
 - quality, poor_query_percentage round to 2 decimal
*/

SELECT
    QUERY_NAME,
    ROUND(AVG(RATING / POSITION), 2) AS QUALITY,
    ROUND(SUM(CASE WHEN RATING < 3 THEN 1
                   ELSE 0
              END) / COUNT(*) * 100, 2)AS POOR_QUERY_PERCENTAGE
FROM
    QUERIES
GROUP BY
    QUERY_NAME;
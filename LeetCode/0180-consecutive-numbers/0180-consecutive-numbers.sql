/*
print: consecutivenums
condition:
 - at least threetimes consecutively apper numbers
*/

WITH LAG_NUMS AS (
    SELECT
        ID,
        NUM,
        LAG(NUM, 1) OVER(ORDER BY ID) AS PREV_NUM,
        LAG(NUM, 2) OVER(ORDER BY ID) AS PREV_PREV_NUM
    FROM
        LOGS
)
SELECT
    DISTINCT NUM AS CONSECUTIVENUMS
FROM
    LAG_NUMS
WHERE
    NUM = PREV_NUM
    AND NUM = PREV_PREV_NUM;
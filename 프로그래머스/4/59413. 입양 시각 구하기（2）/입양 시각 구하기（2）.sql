/*
출력: HOUR, COUNT
조건:
 - 0시부터 23시까지, 각 시간대별 입양 건 수
정렬: HOUR
*/
WITH RECURSIVE HOURS AS (
    SELECT 0 AS HOUR
    UNION ALL
    SELECT
        HOUR + 1
    FROM
        HOURS
    WHERE
        HOUR < 23
)
SELECT
    H.HOUR,
    COUNT(A.ANIMAL_ID) AS COUNT
FROM
    HOURS AS H
LEFT JOIN
    ANIMAL_OUTS AS A ON H.HOUR = HOUR(A.DATETIME)
GROUP BY
    H.HOUR
ORDER BY
    H.HOUR;
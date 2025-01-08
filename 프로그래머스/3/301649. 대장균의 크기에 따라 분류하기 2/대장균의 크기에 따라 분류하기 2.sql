/*
출력: ID, COLONY_NAME
조건:
 - 대장균 개체 크기 상위 0% ~ 25% -> 'CRITICAL'
 - 26% ~ 50% -> 'HIGH'
 - 51% ~ 75% -> 'MEDIUM'
 - 76% ~ 100% -> 'LOW'
 - 총 데이터 수 4의 배수이며 대장균 개체는 모두 사이즈가 다름
정렬: ID ASC
*/
WITH RN_PERCENT_DATA AS (
    SELECT
        ID,
        ROW_NUMBER() OVER(ORDER BY SIZE_OF_COLONY DESC) / COUNT(*) OVER() AS RN_PERCENT
    FROM
        ECOLI_DATA
)
SELECT
    ID,
    CASE
        WHEN RN_PERCENT > 0.75 THEN 'LOW'
        WHEN RN_PERCENT > 0.5 THEN 'MEDIUM'
        WHEN RN_PERCENT > 0.25 THEN 'HIGH'
        ELSE 'CRITICAL'
    END AS COLONY_NAME
FROM
    RN_PERCENT_DATA
ORDER BY
    ID;
/*
출력: FLAVOR
조건:
 - 7월 아이스크림 총 주문량과 상반기 아이스크림 총 주문량 더한 값이 큰 순서대로 상위 3개의 맛 조회
*/
WITH UNION_DATA AS (
    SELECT
        FLAVOR,
        TOTAL_ORDER
    FROM
        JULY
    
    UNION ALL
    
    SELECT
        FLAVOR,
        TOTAL_ORDER
    FROM
        FIRST_HALF
)
SELECT
    FLAVOR
FROM
    UNION_DATA
GROUP BY
    FLAVOR
ORDER BY
    SUM(TOTAL_ORDER) DESC
LIMIT 3;
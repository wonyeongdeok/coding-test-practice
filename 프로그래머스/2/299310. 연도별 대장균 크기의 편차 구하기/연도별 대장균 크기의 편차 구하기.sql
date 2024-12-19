/*
출력: 분화된 연도, 분화된 연도별 대장균 크기 편차, 대장균 개체의 id
조건: 분화된 연도별 대장균 편차 = 분화된 연도별 가장 큰 대장균 크기 - 각 대장균의 크기
정렬: 분화된 연도 asc, 대장균 크기의 편차 asc

분화된 연도별 가장 큰 대장균 크기 구하기
원래 테이블과 조인 ON 분화된 연도
*/

WITH MAX_DATA AS (
    SELECT
        YEAR(DIFFERENTIATION_DATE) AS YEAR,
        MAX(SIZE_OF_COLONY) AS MAX_SIZE
    FROM
        ECOLI_DATA
    GROUP BY
        YEAR(DIFFERENTIATION_DATE)
)
SELECT
    YEAR(ED.DIFFERENTIATION_DATE) AS YEAR,
    MD.MAX_SIZE - ED.SIZE_OF_COLONY AS YEAR_DEV,
    ED.ID
FROM
    ECOLI_DATA ED
INNER JOIN
    MAX_DATA MD ON YEAR(ED.DIFFERENTIATION_DATE) = MD.YEAR
ORDER BY
    YEAR ASC,
    YEAR_DEV ASC;

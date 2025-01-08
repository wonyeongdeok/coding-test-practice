/*
출력: ID, FISH_NAME, LENGTH
조건:
 - 물고기 종류별 가장 큰 물고기
 - 물고기 종류별 가장 큰 물고기는 1마리
 - 10cm이하의 물고기가 가장 큰 경우는 없음
 - 10cm이하일 경우 length는 NULL
정렬: ID asc
*/

-- 물고가 타입별 MAX LENGTH 구하기
WITH FISH_MAX_LEN AS (
    SELECT
        FISH_TYPE,
        MAX(LENGTH) AS LENGTH
    FROM
        FISH_INFO
    GROUP BY
        FISH_TYPE
)
SELECT
    FI.ID,
    FN.FISH_NAME,
    FM.LENGTH
FROM
    FISH_INFO AS FI
JOIN
    FISH_MAX_LEN AS FM ON FI.FISH_TYPE = FM.FISH_TYPE
JOIN
    FISH_NAME_INFO AS FN ON FI.FISH_TYPE = FN.FISH_TYPE
WHERE
    FI.LENGTH = FM.LENGTH
ORDER BY
    FI.ID;
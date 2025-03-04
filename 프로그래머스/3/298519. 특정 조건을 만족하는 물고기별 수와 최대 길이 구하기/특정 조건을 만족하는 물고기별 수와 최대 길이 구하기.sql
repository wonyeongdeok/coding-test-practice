/*
출력: FISH_COUNT, MAX_LENGTH, FISH_TYPE
조건:
 - 평균 길이 33cm 이상
 - 10cm 이하 물고기들은 10cm 취급
정렬: FISH_TYPE ASC
*/

WITH FISH AS (
    SELECT
        FISH_TYPE,
        IFNULL(LENGTH, 10) AS LENGTH
    FROM
        FISH_INFO
)
SELECT
    COUNT(*) AS FISH_COUNT,
    MAX(LENGTH) AS MAX_LENGTH,
    FISH_TYPE
FROM
    FISH
GROUP BY
    FISH_TYPE
HAVING
    AVG(LENGTH) >= 33
ORDER BY
    FISH_TYPE;
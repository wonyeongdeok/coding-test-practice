/*
출력: 잡은 수, 물고기 이름
정렬: 잡은 수 내림
*/

SELECT
    COUNT(*) AS FISH_COUNT,
    FN.FISH_NAME
FROM
    FISH_INFO F
INNER JOIN
    FISH_NAME_INFO FN ON F.FISH_TYPE = FN.FISH_TYPE
GROUP BY
    FN.FISH_NAME
ORDER BY
    COUNT(*) DESC;
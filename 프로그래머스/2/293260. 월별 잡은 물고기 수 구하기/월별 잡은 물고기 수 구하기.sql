/*
출력: 월별 잡은 물고기 수, 월
조건: 월 숫자형태로 출력하며 9이하는 한자리로, 잡은 물고기 없는 달 출력 X
정렬: 월 오름
*/

SELECT
    COUNT(*) AS FISH_COUNT,
    MONTH(TIME) AS MONTH
FROM
    FISH_INFO
GROUP BY
    MONTH(TIME)
ORDER BY
    MONTH(TIME) ASC;
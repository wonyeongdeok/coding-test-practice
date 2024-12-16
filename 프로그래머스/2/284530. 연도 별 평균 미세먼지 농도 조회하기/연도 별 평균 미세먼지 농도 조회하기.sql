/*
출력: 연도, 평균 미세먼지, 평균 초미세먼지
조건: 수원 지역, 출력값모두 셋째 자리에서 반올림
정렬: 연도 오름
*/

SELECT
    YEAR(YM) AS YEAR,
    ROUND(AVG(PM_VAL1), 2) AS 'PM10',
    ROUND(AVG(PM_VAL2), 2) AS 'PM2.5'
FROM
    AIR_POLLUTION
WHERE
    LOCATION2 = '수원'
GROUP BY
    YEAR(YM)
ORDER BY
    YEAR(YM) ASC;
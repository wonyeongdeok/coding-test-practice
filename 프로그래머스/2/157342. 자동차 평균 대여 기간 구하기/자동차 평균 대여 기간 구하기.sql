/*
출력: 자동차 id, 평균 대여기간
조건: 평균 대여 기간 7일 이상, 소수점 두번째 자리에서 반올림
정렬: 평균 대여기간 내림, 자동차 id 내림
*/

SELECT
    CAR_ID,
    ROUND(AVG(DATEDIFF(END_DATE, START_DATE) + 1), 1) AS AVERAGE_DURATION
FROM
    CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY
    CAR_ID
HAVING
    AVERAGE_DURATION >= 7
ORDER BY
    AVERAGE_DURATION DESC,
    CAR_ID DESC;
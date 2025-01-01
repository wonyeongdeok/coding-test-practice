/*
출력: CAR_ID, AVAILABILITY
조건:
 - 기준 날짜 2022년 10월 16일
 - if 대여중인 경우 then '대여중'
 - if 대여 중이지 않은 경우 '대여 가능'
 - 반납 날짜가 2022년 10월 16일인 경우에도 '대여중'
정렬: CAR_ID DESC
*/

WITH RENTAL AS (
    SELECT
        CAR_ID,
        CASE
            WHEN '2022-10-16' BETWEEN START_DATE AND END_DATE THEN 1
            ELSE 0
        END AS IS_RENTAL
    FROM
        CAR_RENTAL_COMPANY_RENTAL_HISTORY
)
SELECT
    CAR_ID,
    CASE
        WHEN SUM(IS_RENTAL) > 0 THEN '대여중'
        ELSE '대여 가능'
    END AS AVAILABILITY
FROM
    RENTAL
GROUP BY
    CAR_ID
ORDER BY
    CAR_ID DESC;
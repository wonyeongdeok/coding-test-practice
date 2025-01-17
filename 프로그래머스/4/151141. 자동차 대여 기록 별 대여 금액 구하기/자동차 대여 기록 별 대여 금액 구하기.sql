/*
출력: HISTORY_ID, FEE
조건:
 - FEE 정수부분만 출력
 - 자동차 종류 '트럭'
 - 대여 기록별 대여 금액 구하기
정렬:
 - FEE DESC
 - ID DESC
*/

-- 자동차 종류가 트럭인 대여 기록의 대여 기간 및 대여 타입 구하기
WITH RENTAL_DURATION AS (
    SELECT
        H.HISTORY_ID,
        C.CAR_TYPE,
        C.DAILY_FEE,
        DATEDIFF(H.END_DATE, H.START_DATE) + 1 AS DURATION,
        CASE
            WHEN DATEDIFF(H.END_DATE, H.START_DATE) + 1 >= 90 THEN '90일 이상'
            WHEN DATEDIFF(H.END_DATE, H.START_DATE) + 1 >= 30 THEN '30일 이상'
            WHEN DATEDIFF(H.END_DATE, H.START_DATE) + 1 >= 7 THEN '7일 이상'
            ELSE NULL
        END AS DURATION_TYPE
    FROM
        CAR_RENTAL_COMPANY_CAR AS C
    JOIN
        CAR_RENTAL_COMPANY_RENTAL_HISTORY AS H ON C.CAR_ID = H.CAR_ID
    WHERE
        C.CAR_TYPE = '트럭'
),
RENTAL_FEE AS (
    SELECT
        R.HISTORY_ID,
        FLOOR(
            R.DAILY_FEE * (1 - (0.01 * IFNULL(P.DISCOUNT_RATE, 0))) * DURATION
        )AS FEE
    FROM
        RENTAL_DURATION AS R
    LEFT JOIN
        CAR_RENTAL_COMPANY_DISCOUNT_PLAN AS P ON R.CAR_TYPE = P.CAR_TYPE
                                              AND R.DURATION_TYPE = P.DURATION_TYPE
)
SELECT
    HISTORY_ID,
    FEE
FROM
    RENTAL_FEE
ORDER BY
    FEE DESC,
    HISTORY_ID DESC;
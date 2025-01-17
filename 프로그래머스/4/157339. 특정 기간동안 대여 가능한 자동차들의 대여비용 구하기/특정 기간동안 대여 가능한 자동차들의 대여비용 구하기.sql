/*
출력: CAR_ID, CAR_TYPE, FEE
조건:
 - 자동차 종류가 '세단' or 'SUV'인 자동자
 - 2022년 11월 1일부터 2022년 11월 30일까지 대여 가능
    - 즉, 이 기간에 대여 기록이 없는 CAR_ID 대상
 - 30일간 대여 금액이 50만원 이상 200만원 미만
 - FEE 정수부분만 출력
정렬:
 - FEE DESC, CAR_TYPE, CAR_ID DESC
*/
-- 2022년 11월 1일 ~ 30일 대여 기록 있는 CAR_ID 찾기
WITH NOVEMBER_CARS AS (
    SELECT
        DISTINCT CAR_ID
    FROM
        CAR_RENTAL_COMPANY_RENTAL_HISTORY
    WHERE
        NOT (START_DATE > '2022-11-30' OR END_DATE < '2022-11-01')
),
TARGET_CARS AS (
    SELECT
        C.CAR_ID,
        C.CAR_TYPE,
        C.DAILY_FEE,
        P.DISCOUNT_RATE
    FROM
        CAR_RENTAL_COMPANY_CAR AS C
    JOIN
        CAR_RENTAL_COMPANY_DISCOUNT_PLAN AS P ON C.CAR_TYPE = P.CAR_TYPE
                                              AND P.DURATION_TYPE = '30일 이상'
    WHERE
        C.CAR_TYPE IN ('세단', 'SUV')
        AND C.CAR_ID NOT IN (SELECT CAR_ID FROM NOVEMBER_CARS)
),
RENTAL_FEES AS (
    SELECT
        CAR_ID,
        CAR_TYPE,
        FLOOR(
            DAILY_FEE * (1 - (DISCOUNT_RATE * 0.01)) * 30
        ) AS FEE
    FROM
        TARGET_CARS
)
SELECT
    CAR_ID,
    CAR_TYPE,
    FEE
FROM
    RENTAL_FEES
WHERE
    FEE BETWEEN 500000 AND 2000000
ORDER BY
    FEE DESC,
    CAR_TYPE,
    CAR_ID DESC;
/*
출력: CAR_ID
조건:
 - 자동차 종류 '세단'
 - 10월 대여 시작한 기록이 있는 자동차 id
 - 자동차 id 중복 x
정렬: CAR_ID desc
*/

SELECT
    DISTINCT C.CAR_ID
FROM
    CAR_RENTAL_COMPANY_CAR C
JOIN
    CAR_RENTAL_COMPANY_RENTAL_HISTORY H ON C.CAR_ID = H.CAR_ID
WHERE
    C.CAR_TYPE = '세단'
    AND MONTH(H.START_DATE) = '10'
ORDER BY
    C.CAR_ID DESC;
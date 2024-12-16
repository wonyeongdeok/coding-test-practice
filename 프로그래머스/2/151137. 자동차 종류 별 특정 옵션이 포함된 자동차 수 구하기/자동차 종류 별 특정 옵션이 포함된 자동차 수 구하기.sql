/*
자동차 종류, 개수
조건: '통풍시트', '열선시트', '가죽시트' 중 하나 이상의 옵션 포함
정렬: 자동차 종류 asc
*/

SELECT
    CAR_TYPE,
    COUNT(*) AS CARS
FROM
    CAR_RENTAL_COMPANY_CAR
WHERE
    OPTIONS REGEXP '통풍시트|열선시트|가죽시트'
GROUP BY
    CAR_TYPE
ORDER BY
    CAR_TYPE;
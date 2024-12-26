/*
출력: ORDER_ID, PRODUCT_ID, OUT_DATE, 출고여부
조건:
 - 2022년 5월 1일까지 출고완료
 - 2022년 5월 2일부터는 출고대기
 - 출고 일정 없으면 출고미정
정렬: ORDER_ID ASC
*/

SELECT
    ORDER_ID,
    PRODUCT_ID,
    DATE_FORMAT(OUT_DATE, '%Y-%m-%d'),
    CASE
        WHEN OUT_DATE IS NULL THEN '출고미정'
        WHEN OUT_DATE <= '2022-05-01' THEN '출고완료'
        ELSE '출고대기'
    END AS '출고여부'
FROM
    FOOD_ORDER
ORDER BY
    ORDER_ID;

/*
출력: PRODUCT_ID, PRODUCT_NAME, TOTAL_SALES
조건:
 - 생산일자 2022년 5월
정렬: TOTAL_SALES DESC, PRODUCT_ID
*/
SELECT
    P.PRODUCT_ID,
    P.PRODUCT_NAME,
    SUM(P.PRICE * O.AMOUNT) AS TOTAL_SALES
FROM
    FOOD_PRODUCT AS P
JOIN
    FOOD_ORDER AS O ON P.PRODUCT_ID = O.PRODUCT_ID
WHERE
    DATE_FORMAT(O.PRODUCE_DATE, '%Y-%m') = '2022-05'
GROUP BY
    P.PRODUCT_ID,
    P.PRODUCT_NAME
ORDER BY
    TOTAL_SALES DESC,
    P.PRODUCT_ID;
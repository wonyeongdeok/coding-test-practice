/*
출력: SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
조건:
 - 2022년 3월 오프라인/온라인 상품 판매 데이터
 - OFFLINE_SALE 테이블의 판매 데이터의 USER_ID는 NULL
정렬: SALES_DATE, PRODUCT_ID, USER_ID
*/
WITH UNION_DATA AS(
    SELECT
        USER_ID,
        PRODUCT_ID,
        SALES_AMOUNT,
        SALES_DATE
    FROM
        ONLINE_SALE
    UNION ALL
    SELECT
        NULL AS USER_ID,
        PRODUCT_ID,
        SALES_AMOUNT,
        SALES_DATE
    FROM
        OFFLINE_SALE    
)
SELECT
    DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE,
    PRODUCT_ID,
    USER_ID,
    SALES_AMOUNT
FROM
    UNION_DATA
WHERE
    DATE_FORMAT(SALES_DATE, '%Y-%m') = '2022-03'
ORDER BY
    SALES_DATE,
    PRODUCT_ID,
    USER_ID;
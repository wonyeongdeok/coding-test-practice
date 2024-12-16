/*
상품 개수 출력
조건: 상품 카테고리 코드(product_code 앞 2자리)별로
정렬: 상품 카테고리 코드
*/

SELECT
    LEFT(PRODUCT_CODE, 2) AS CATEGORY,
    COUNT(*) AS PRODUCTS
FROM
    PRODUCT
GROUP BY
    LEFT(PRODUCT_CODE, 2)
ORDER BY
    LEFT(PRODUCT_CODE, 2);
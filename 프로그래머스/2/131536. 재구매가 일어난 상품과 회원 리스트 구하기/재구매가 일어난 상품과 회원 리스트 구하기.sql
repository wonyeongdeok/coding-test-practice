/*
회원 id, 상품 id
조건: 동일 회원 동일 상품 재구매
정렬: 회원 id asc, 상품 id desc
*/

SELECT
    USER_ID,
    PRODUCT_ID
FROM
    ONLINE_SALE
GROUP BY
    USER_ID,
    PRODUCT_ID
HAVING
    COUNT(*) >= 2
ORDER BY
    USER_ID ASC,
    PRODUCT_ID DESC;
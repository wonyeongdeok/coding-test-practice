/*
출력: CART_ID
조건:
 - 우유와 요거트를 동시에 구입한 장바구니
정렬: 장바구니의 아이디 ASC
*/
WITH NAME_CONCAT AS (
    SELECT
        CART_ID,
        GROUP_CONCAT(DISTINCT NAME SEPARATOR '|') AS GC
    FROM
        CART_PRODUCTS
    GROUP BY
        CART_ID
)
SELECT
    CART_ID
FROM
    NAME_CONCAT
WHERE
    GC REGEXP 'Milk.*Yogurt|Yogurt.*Milk'
ORDER BY
    CART_ID;



# SELECT CART_ID
# FROM CART_PRODUCTS
# WHERE NAME IN ('Milk', 'Yogurt')
# GROUP BY CART_ID
# HAVING COUNT(DISTINCT NAME) = 2
# ORDER BY CART_ID ASC;

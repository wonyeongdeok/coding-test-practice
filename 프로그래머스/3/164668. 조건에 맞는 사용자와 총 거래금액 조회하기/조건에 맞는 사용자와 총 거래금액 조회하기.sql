/*
출력: USER_ID, NICKNAME, TOTAL_SALES
조건:
 - 완료된 중고거래
 - 총금액 70만원 이상
정렬: 총금액 asc
*/

SELECT
    U.USER_ID,
    U.NICKNAME,
    SUM(B.PRICE) AS TOTAL_SALES
FROM
    USED_GOODS_BOARD B
JOIN
    USED_GOODS_USER U ON B.WRITER_ID = U.USER_ID
WHERE
    B.STATUS = 'DONE'
GROUP BY
    U.USER_ID
HAVING
    SUM(B.PRICE) >= 700000
ORDER BY
    SUM(B.PRICE);
/*
출력: USER_ID, NICKNAME, 전체주소, 전화번호
조건:
 - 중고 거래 게시물 3건 이상 등록한 사용자
 - 전체주소는 시 + 도로명 주소 + 상세 주소
 - 전화번호는 xxx-xxxx-xxxx
정렬: USER_ID DESC
*/
SELECT
    U.USER_ID,
    U.NICKNAME,
    CONCAT_WS(' ',
              U.CITY,
              U.STREET_ADDRESS1,
              U.STREET_ADDRESS2
    ) AS '전체주소',
    CONCAT(SUBSTRING(U.TLNO, 1, 3),
           '-',
           SUBSTRING(U.TLNO, 4, 4),
           '-',
           SUBSTRING(U.TLNO, 8, 4)
    ) AS '전화번호'
FROM
    USED_GOODS_BOARD B
JOIN
    USED_GOODS_USER U ON B.WRITER_ID = U.USER_ID
GROUP BY
    U.USER_ID
HAVING
    COUNT(*) >= 3
ORDER BY
    USER_ID DESC;
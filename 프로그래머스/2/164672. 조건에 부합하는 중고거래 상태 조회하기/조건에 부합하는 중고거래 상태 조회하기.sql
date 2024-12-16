/*
출력: 게시글id, 작성자id, 게시글 제목, 가격, 거래상태
조건: 2022년 10월 5일 등록
if 거래상태 sale then 판매중
elif 거래상태 reserved then 예약중
elif 거래상태 done then 거래완료
정렬: 게시글 id desc
*/

SELECT
    BOARD_ID,
    WRITER_ID,
    TITLE,
    PRICE,
    CASE WHEN STATUS = 'SALE' THEN '판매중'
         WHEN STATUS = 'RESERVED' THEN '예약중'
         WHEN STATUS = 'DONE' THEN '거래완료'
    END AS STATUS
FROM
    USED_GOODS_BOARD
WHERE
    DATE_FORMAT(CREATED_DATE, '%Y-%m-%d') = '2022-10-05'
ORDER BY
    BOARD_ID DESC;
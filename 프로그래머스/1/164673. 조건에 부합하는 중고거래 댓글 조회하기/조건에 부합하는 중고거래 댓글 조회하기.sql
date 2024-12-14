/*
게시글 제목, 게시글 id, 댓글 id, 댓글 작성자 id, 댓글 내용, 댓글 작성일 조회
where  2022년 10월 작성
order by 댓글 작성일 asc, 게시글 제목 asc
*/

SELECT  UB.TITLE
        ,UB.BOARD_ID
        ,UR.REPLY_ID
        ,UR.WRITER_ID
        ,UR.CONTENTS
        ,DATE_FORMAT(UR.CREATED_DATE, '%Y-%m-%d') AS CREATED_DATE
  FROM  USED_GOODS_BOARD UB
 INNER
  JOIN  USED_GOODS_REPLY UR
    ON  UB.BOARD_ID = UR.BOARD_ID
 WHERE  DATE_FORMAT(UB.CREATED_DATE, '%Y-%m') = '2022-10'
 ORDER
    BY  UR.CREATED_DATE ASC
        ,UB.TITLE ASC;
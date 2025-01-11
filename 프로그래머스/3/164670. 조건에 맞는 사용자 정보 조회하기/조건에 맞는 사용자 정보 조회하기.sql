/*
출력: USER_ID, NICKNAME, 전체주소, 전화번호
조건:
 - 중고 거래 게시물 3건 이상 등록한 사용자
 - 전체주소는 시 + 도로명 주소 + 상세 주소
 - 전화번호는 xxx-xxxx-xxxx
정렬: USER_ID DESC
*/
# SELECT
#     U.USER_ID,
#     U.NICKNAME,
#     CONCAT_WS(' ',
#               U.CITY,
#               U.STREET_ADDRESS1,
#               U.STREET_ADDRESS2
#     ) AS '전체주소',
#     CONCAT(SUBSTRING(U.TLNO, 1, 3),
#            '-',
#            SUBSTRING(U.TLNO, 4, 4),
#            '-',
#            SUBSTRING(U.TLNO, 8, 4)
#     ) AS '전화번호'
# FROM
#     USED_GOODS_BOARD B
# JOIN
#     USED_GOODS_USER U ON B.WRITER_ID = U.USER_ID
# GROUP BY
#     U.USER_ID
# HAVING
#     COUNT(*) >= 3
# ORDER BY
#     USER_ID DESC;
    
    
    
# SELECT  U.USER_ID
#         ,U.NICKNAME
#         ,CONCAT(U.CITY, ' ', U.STREET_ADDRESS1, U.STREET_ADDRESS2) AS 전체주소
#         ,CONCAT(SUBSTR(U.TLNO,1,3), '-', SUBSTR(U.TLNO,4,4), '-', SUBSTR(U.TLNO,8,4)) AS 전화번호
#   FROM  USED_GOODS_BOARD AS B
#   JOIN  USED_GOODS_USER AS U
#     ON  B.WRITER_ID = U.USER_ID
#  GROUP
#     BY  U.USER_ID
# HAVING  COUNT(B.BOARD_ID) >= 3
#  ORDER
#     BY  U.USER_ID;
    

    
    
    
    
    
SELECT  U.USER_ID,
        U.NICKNAME,
        CONCAT(U.CITY, ' ', U.STREET_ADDRESS1, ' ', IFNULL(U.STREET_ADDRESS2, '')) AS 전체주소,
        CONCAT(SUBSTRING(U.TLNO, 1, 3), '-', SUBSTRING(U.TLNO, 4, 4), '-', SUBSTRING(U.TLNO, 8, 4)) AS 전화번호
  FROM  USED_GOODS_USER AS U
  JOIN  (SELECT  WRITER_ID,
                 COUNT(BOARD_ID) AS TOTAL_POSTS
           FROM  USED_GOODS_BOARD
          GROUP
             BY  WRITER_ID
         HAVING  TOTAL_POSTS >= 3
    ) AS B
    ON  U.USER_ID = B.WRITER_ID
 ORDER
    BY  U.USER_ID DESC;
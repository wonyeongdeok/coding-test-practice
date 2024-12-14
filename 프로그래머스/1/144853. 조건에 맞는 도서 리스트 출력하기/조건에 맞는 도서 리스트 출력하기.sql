/*
도서 id, 출판일 출력
where 2021 출판 and 인문 카테고리
order by 출판일 asc
*/

SELECT  BOOK_ID
        ,DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE
  FROM  BOOK
 WHERE  YEAR(PUBLISHED_DATE) = 2021
   AND  CATEGORY = '인문'
 ORDER
    BY  PUBLISHED_DATE ASC;
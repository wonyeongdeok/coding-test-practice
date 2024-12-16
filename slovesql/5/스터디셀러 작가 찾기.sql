/*
작가 이름, 연속 베스트셀러 기간 중 가장 최근 연도, 연속 베스트셀러 년수
where 5년 이상 연속 베스트셀러
*/

WITH BOOKS_PREPROCESS AS (
  SELECT  DISTINCT AUTHOR
                   ,YEAR
    FROM  BOOKS
   WHERE  GENRE = 'Fiction'
),
BOOKS_YRN AS (
  SELECT  AUTHOR
          ,YEAR
          ,ROW_NUMBER() OVER(PARTITION BY AUTHOR ORDER BY YEAR) AS RN
          ,YEAR - ROW_NUMBER() OVER(PARTITION BY AUTHOR ORDER BY YEAR) AS YRN
    FROM  BOOKS_PREPROCESS
),
BOOKS_CONSECUTIVE AS (
  SELECT  author
          ,MAX(YEAR) AS year
          ,COUNT(*) AS depth
    FROM  BOOKS_YRN
   GROUP
      BY  AUTHOR
          ,YRN
  HAVING  COUNT(*) >= 5
)
SELECT  author
        ,year
        ,depth
  FROM  BOOKS_CONSECUTIVE;
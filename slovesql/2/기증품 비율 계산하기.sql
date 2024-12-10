/*
- query percent of gift
- round up 3
*/

SELECT  ROUND(
              (SELECT  COUNT(*) * 1.0
                FROM  ARTWORKS
                WHERE  CREDIT LIKE '%gift%')
              /
              (SELECT  COUNT(*) * 1.0
                FROM  ARTWORKS) * 100
        , 3) AS RATIO;
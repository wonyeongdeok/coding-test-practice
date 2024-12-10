WITH CTE AS (
    SELECT  LAT_N,
            ROW_NUMBER() OVER (ORDER BY LAT_N) AS ROW_NUM,
            COUNT(*) OVER () AS TOTAL_ROW
      FROM  STATION
)
SELECT  ROUND(CASE
                  WHEN TOTAL_ROW % 2 != 0 THEN (SELECT  LAT_N
                                                   FROM  CTE
                                                  WHERE  ROW_NUM = (TOTAL_ROW + 1) / 2)
                  ELSE (SELECT  AVG(LAT_N)
                          FROM  CTE
                         WHERE  ROW_NUM IN (TOTAL_ROW / 2, (TOTAL_ROW / 2) + 1))
              END
        , 4) AS MEDIAN
  FROM  (SELECT  DISTINCT TOTAL_ROW
           FROM  CTE) AS A;
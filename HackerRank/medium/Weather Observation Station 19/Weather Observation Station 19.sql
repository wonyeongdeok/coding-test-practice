/*
1. get min and max of LAT_n
2. get min and max of long_n
3. get euclidean distance
*/
SELECT  ROUND(
            SQRT(
                POWER(MAX(LAT_N) - MIN(LAT_N), 2) +
                POWER(MAX(LONG_W) - MIN(LONG_W), 2))
        , 4)
  FROM  STATION;

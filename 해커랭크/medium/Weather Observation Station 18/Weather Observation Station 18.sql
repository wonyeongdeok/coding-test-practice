SELECT  ROUND(
            (ABS(MAX(LAT_N)) - ABS(MIN(LAT_N))) +
            (ABS(MAX(LONG_W)) - ABS(MIN(LONG_W)))
        , 4)
  FROM  STATION;
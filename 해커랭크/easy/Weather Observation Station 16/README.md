# Weather Observation Station 16

### Problem

Query the smallest *Northern Latitude* (*LAT_N*) from **STATION** that is greater than . Round your answer to  decimal places.

### Input Format

The **STATION** table is described as follows:

![image.png](image.png)

where *LAT_N* is the northern latitude and *LONG_W* is the western longitude.

### Submission

```sql
SELECT  ROUND(MIN(LAT_N), 4)
  FROM  STATION
 WHERE  LAT_N > 38.7780;
```

[문제 링크](https://www.hackerrank.com/challenges/weather-observation-station-16/problem?isFullScreen=true)
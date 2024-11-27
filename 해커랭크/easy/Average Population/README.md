# Average Population

### Problem

Query the average population for all cities in **CITY**, rounded *down* to the nearest integer.

### Input Format

The **CITY** table is described as follows:

![image.png](image.png)

### Submission

```sql
SELECT  FLOOR(AVG(POPULATION))
  FROM  CITY;
```

[문제 링크](https://www.hackerrank.com/challenges/average-population/problem?isFullScreen=true)
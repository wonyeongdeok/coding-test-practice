# Revising Aggregations - The Sum Function

### Problem

Query the total population of all cities in **CITY** where *District* is **California**.

### Input Format

The **CITY** table is described as follows:

![image.png](image.png)

### Submission

```sql
SELECT  SUM(POPULATION)
  FROM  CITY
 WHERE  DISTRICT = 'California';
```

[문제 링크](https://www.hackerrank.com/challenges/revising-aggregations-sum/problem?isFullScreen=true)
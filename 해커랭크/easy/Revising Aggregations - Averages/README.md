# Revising Aggregations - Averages

### Problem

Query the average population of all cities in **CITY** where *District* is **California**.

### Input Format

The **CITY** table is described as follows:

![image.png](image.png)

### Submission

```sql
SELECT  AVG(POPULATION)
  FROM  CITY
 WHERE  DISTRICT = 'California';
```
[문제 링크](https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem?isFullScreen=true)
# Japanese Cities' Attributes

### Problem

Query all attributes of every Japanese city in the **CITY** table. The **COUNTRYCODE** for Japan is `JPN`.

### Input Format

The **CITY** table is described as follows:

![image.png](image.png)

### Submission

```sql
SELECT  *
  FROM  CITY
 WHERE  COUNTRYCODE = 'JPN';
```

[문제 링크](https://www.hackerrank.com/challenges/japanese-cities-attributes/problem?isFullScreen=true)
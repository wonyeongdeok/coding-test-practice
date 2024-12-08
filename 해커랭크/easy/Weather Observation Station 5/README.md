# Weather Observation Station 5

### Problem

Query the two cities in **STATION** with the shortest and longest *CITY* names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
The **STATION** table is described as follows:

![image.png](image.png)

where **LAT_N** is the northern latitude and **LONG_W** is the western longitude.

### **Sample Input**

For example, **CITY** has four entries: **DEF, ABC, PQRS** and **WXY**.

### **Sample Output**

```
ABC 3
PQRS 4
```

### **Explanation**

When ordered alphabetically, the **CITY** names are listed as **ABC, DEF, PQRS,** and **WXY**, with lengths  and . The longest name is **PQRS**, but there are  options for shortest named city. Choose **ABC**, because it comes first alphabetically.

### **Note**

You can write two separate queries to get the desired output. It need not be a single query.

[문제 링크](https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true)

### Lessons Learned

- UNION ALL로 각 쿼리를 합칠 때 괄호로 각각의 쿼리를 독립적으로 처리하도록 명확히 정의하면 `LIMIT`과 `ORDER BY`가 각 쿼리에서 별도로 적용됨
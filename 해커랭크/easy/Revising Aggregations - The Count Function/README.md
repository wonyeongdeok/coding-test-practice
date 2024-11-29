# Revising Aggregations - The Count Function

### Problem

Query a *count* of the number of cities in **CITY** having a *Population* larger than .

### Input Format

The **CITY** table is described as follows:

![image.png](image.png)

[문제 링크](https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem?isFullScreen=true)

### Lessons Learned

- COUNT(*)
    - 특정 컬럼의 NULL값 여부를 고려하라는 별도의 요구사항이 없다면, 일반적으로 COUNT(*)을 사용하는 것이 더 적합
    - COUNT(*)은 테이블에서 조건에 맞는 전체 행의 개수를 세기 때문에, 특정 컬럼에 종속되지 않음
    - 이로 인해 쿼리를 읽는 사람에게도 “조건에 맞는 전체 행을 세겠다”는 의도를 명확히 전달 가능
    - 게다가 현대 DB엔진은 COUNT(*)과 COUNT(COLUMN)의 성능 차이가 거의 없음
- COUNT(COLUMN)
    - 특정 컬럼에 대해 NULL이 아닌 값만 카운트하라는 요구사항이 있을 때 사용
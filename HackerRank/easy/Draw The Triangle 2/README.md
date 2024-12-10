# Draw The Triangle 2

### Problem

*P(R)* represents a pattern drawn by Julia in *R* rows. The following pattern represents *P(5)*:

```
*
* *
* * *
* * * *
* * * * *
```

Write a query to print the pattern *P(20)*.

[문제 링크](https://www.hackerrank.com/challenges/draw-the-triangle-2/problem?isFullScreen=true)

### Lessons Learned

- CTE(Common Table Expression)
    - 복잡한 쿼리를 단순화하거나 반복적으로 사용해야 하는 하위 쿼리를 관리하기 위해 사용
    - CTE는 쿼리의 가독성을 높이고, 재귀적 데이터 처리에도 유용
- RECURSIVE CTE
    - CTE에 재귀 기능을 추가한 것. 재귀 CTE는 자기 자신을 반복적으로 호출하여 데이터를 점진적으로 생성하거나 확장할 수 있음.
    - 쿼리
    
    ```sql
    WITH RECURSIVE CTE AS (
    	  SELECT  1 AS N  -- 초기 행 정의 (Anchor Query)
         UNION
    	     ALL
    	  SELECT  N + 1   -- 재귀적으로 값을 생성 (Recursive Query)
          FROM  CTE
         WHERE  N < 20  -- 종료 조건 (Termination Condition)
    )
    SELECT N
    FROM CTE;
    ```
    
    - 각 부분 동작 설명
        1. **`WITH RECURSIVE` 정의**:
            - `SELECT 1 AS N`: 처음에 N=1로 시작.
            - `UNION ALL`: 재귀적으로 데이터를 계속 추가.
            - `SELECT N + 1 FROM CTE`: 현재 값 N에 1을 더해 N+1 생성.
            - `WHERE N < 20`: N=20에서 재귀 종료.
        2. **`SELECT N`**:
            - `CTE`에서 생성된 데이터를 출력.
    - 출력 결과
    
    ```
    N
    --
    1
    2
    3
    4
    5
    ...
    19
    20
    ```
    
- REAPEAT(string, count)
    - 문자열을 지정된 횟수만큼 반복하여 새로운 문자열 생성하는 함수
    - string: 반복할 문자열
    - count: 문자열을 반복할 횟수 또는 횟수가 들어있는 컬럼
# Weather Observation Station 20

### Problem

A [*median*](https://en.wikipedia.org/wiki/Median) is defined as a number separating the higher half of a data set from the lower half. Query the *median* of the *Northern Latitudes* (*LAT_N*) from **STATION** and round your answer to  decimal places.

### Input Format

The **STATION** table is described as follows:

![image.png](image.png)

[문제 링크](https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true)

### Lessons Learned

- 윈도우 함수
    - SQL에서 데이터 집합 내의 각 행에 대해 계산 수행하지만, 결과를 집합으로 축약하지 않고 각 행에 대해 값을 반환하는 함수
    - 즉, 집계 함수처럼 작동하면서도, 각 행에 대한 결과를 유지
    - 순위 관련 함수
        - ROW_NUMBER, RANK, DENSE_RANK
    - 집계 함수
        - SUM, AVG, COUNT, MAX, MIN
    - 통계 및 이동 평균 함수
        - LAG, LEAD, FIRST_VALUE, LAST_VALUE

---

- 윈도우 함수 기본 구조
    
    ```sql
    <윈도우 함수> OVER ([PARTITION BY <기준>] [ORDER BY <기준>])
    ```
    
    - **PARTITION BY**: 데이터를 특정 그룹으로 나누기 위해 사용 (선택 사항)
    - **ORDER BY**: 데이터를 정렬하는 기준 (선택 사항)
    - **OVER**: 함수가 계산되는 범위를 정의
    - 예제:
        
        ```sql
        SELECT employee_id,
               department_id,
               salary,
               ROW_NUMBER() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rank
        FROM employees;
        ```
        
        - 각 `department_id`별로 급여(`salary`)를 기준으로 내림차순 정렬하고 순위를 부여

---

- **ROW_NUMBER()**
    - `ROW_NUMBER()`는 윈도우 함수 중 하나로, **윈도우 또는 정렬된 데이터 집합 내에서 각 행에 고유한 번호를 부여**
    - 기본 구조:
        
        ```sql
        ROW_NUMBER() OVER (PARTITION BY <기준> ORDER BY <기준>)
        ```
        
    - 특징:
        - 동일한 값이 있어도 행 번호는 항상 고유합니다.
        - **PARTITION BY**: 데이터를 그룹화하여 각 그룹 내에서 별도의 번호를 매김.
        - **ORDER BY**: 순번을 매기는 기준을 정의.
    - 예제:
        
        ```sql
        SELECT LAT_N,
               ROW_NUMBER() OVER (ORDER BY LAT_N DESC) AS row_num
        FROM STATION;
        ```
        
    - 결과:
        
        ```markdown
        LAT_N   | ROW_NUM
        -----------------
        50.123  | 1
        45.678  | 2
        40.456  | 3
        ```
        

---

- **COUNT(*) OVER()**
    - `COUNT(*) OVER()`는 윈도우 함수로, **집합 내에서 특정 윈도우(범위) 기준에 따라 행 수를 반환**
    - 기본 구조:
        
        ```sql
        COUNT(*) OVER ([PARTITION BY <기준>])
        ```
        
    - 특징:
        - **`COUNT(*)`는 집계 함수로 하나의 값만 반환.** 예: `SELECT COUNT(*) FROM STATION;` → 전체 행 수 1개만 반환
        - **`COUNT(*) OVER()`는 각 행마다 동일한 전체 행 수 또는 그룹별 행 수를 반환**.
    - 예제 1: 전체 행 수 반환
        
        ```sql
        SELECT LAT_N,
               COUNT(*) OVER () AS total_rows
        FROM STATION;
        ```
        
    - 결과:
        
        ```markdown
        markdown
        코드 복사
        LAT_N   | TOTAL_ROWS
        ---------------------
        50.123  | 100
        45.678  | 100
        40.456  | 100
        ```
        
    - 예제 2: 그룹별 행 수 반환
        
        ```sql
        SELECT department_id,
               employee_id,
               COUNT(*) OVER (PARTITION BY department_id) AS dept_count
        FROM employees;
        ```
        
    - 결과:
        
        ```diff
        DEPARTMENT_ID | EMPLOYEE_ID | DEPT_COUNT
        -----------------------------------------
        10            | 101         | 5
        10            | 102         | 5
        20            | 201         | 8
        20            | 202         | 8
        ```
        

---

- **윈도우 함수와 집계 함수의 차이**
    
    
    | **특징** | **윈도우 함수** | **집계 함수** |
    | --- | --- | --- |
    | **결과 범위** | 각 행마다 결과 반환 | 데이터 집합을 하나의 결과로 축약 |
    | **작업 방식** | `OVER` 절로 윈도우 범위 지정 | 전체 데이터 또는 그룹화된 데이터에서 계산 |
    | **사용 예** | `ROW_NUMBER`, `COUNT OVER` 등 | `SUM`, `AVG`, `COUNT` 등 |

---

- **윈도우 함수의 주요 장점**
    1. **각 행에 대한 세부 정보 유지:** 데이터 집합을 축소하지 않고 계산 결과를 각 행에 포함.
    2. **그룹화와 독립적인 계산 가능:** `PARTITION BY`를 통해 그룹 내 작업을 수행할 수 있음.
    3. **복잡한 계산 가능:** 순위 매기기, 누적 합계, 이동 평균 등.

---

- **윈도우 함수 용도**
    - **순위 계산:** `ROW_NUMBER`, `RANK` 등
    - **중앙값 계산:** `ROW_NUMBER`와 `COUNT OVER`를 결합
    - **누적 합계:** `SUM OVER`
    - **과거 데이터 참조:** `LAG`, `LEAD`
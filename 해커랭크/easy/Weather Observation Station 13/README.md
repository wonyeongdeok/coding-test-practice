# Weather Observation Station 13

### Problem

Query the sum of *Northern Latitudes* (*LAT_N*) from **STATION** having values greater than  and less than . Truncate your answer to  decimal places.

### Input Format

The **STATION** table is described as follows:

![image.png](image.png)

where *LAT_N* is the northern latitude and *LONG_W* is the western longitude.

[문제 링크](https://www.hackerrank.com/challenges/weather-observation-station-13/problem?isFullScreen=true)

### Lessons Learned

- **TRUNCATE(number, decimal_places)**
    - number: 컬럼 또는 자르려는 숫자
    - decimal_places: 소수점 이하 몇 번째 자리까지 유지할 것인지 지정하는 값
    - 반올림이 아닌 단순 잘라냄
- **BETWEEN 조건식과 범위 연산자의 비교**
    - 둘의 차이점은 BETWEEN 조건식은 경계값을 포함하지 않으며 범위 연산자는 경계값을 포함
        
        
        | **기능** | **BETWEEN** | **범위 연산자 (`>=`, `<=`)** |
        | --- | --- | --- |
        | **가독성** | 간결함 | 복잡한 조건에서 가독성이 낮아질 수 있음 |
        | **경계값 포함 여부** | 포함 (`A`와 `B` 포함) | 명시적으로 경계값 포함 또는 제외 가능 |
        | **경계값 제외 필요 시** | 경계값 제외 불가 | 가능 (`>`, `<` 사용) |
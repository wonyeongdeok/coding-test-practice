# Weather Observation Station 19

### Problem

Consider $P_1(a, c)$ and $P_2(b, d)$ to be two points on a 2D plane where $(a, b)$ are the respective minimum and maximum values of *Northern Latitude* (*LAT_N*) and $(c, d)$ are the respective minimum and maximum values of *Western Longitude* (*LONG_W*) in **STATION**.

Query the [Euclidean Distance](https://en.wikipedia.org/wiki/Euclidean_distance) between points  and  and *format your answer* to display  decimal digits.

### Input Format

The **STATION** table is described as follows:

![image.png](image.png)

where *LAT_N* is the northern latitude and *LONG_W* is the western longitude.

[문제 링크](https://www.hackerrank.com/challenges/weather-observation-station-19/problem?isFullScreen=true)

### Lessons Learned

- 유클리디안 거리
    - “두 점 사이의 직선거리”를 계산하는 방법
    - 흔히 생각하는 “두 점을 잇는 최단 거리”로, 2차원, 3차원 또는 다차원 공간에서 두 점 사이의 거리를 계산할 때 사용
    - $d = \sqrt{(b - a)^2 + (d - c)^2}$
- POWER(base, exponent)
    - 주어진 숫자의 거듭제곱을 계산하는 함수
    - base: 거듭제곱의 밑
    - exponent: 지수
- SQRT(number)
    - 주어진 숫자의 제곱근을 계산하는 함수
    - number: 제곱근 구할 숫자. 양수만 입력 가능하고 음수 입력 시 에러 발생하거나 NULL 반환
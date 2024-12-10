# Weather Observation Station 18

### Problem

Consider $P_1(a, b)$ and $P_2(c, d)$ to be two points on a *2D* plane.

- $a$ happens to equal the minimum value in *Northern Latitude* (*LAT_N* in **STATION**).
- $b$ happens to equal the minimum value in *Western Longitude* (*LONG_W* in **STATION**).
- $c$ happens to equal the maximum value in *Northern Latitude* (*LAT_N* in **STATION**).
- $d$ happens to equal the maximum value in *Western Longitude* (*LONG_W* in **STATION**).

Query the [Manhattan Distance](https://xlinux.nist.gov/dads/HTML/manhattanDistance.html) between points  $P_1$ and  $P_2$ and round it to a scale of  decimal places.

### Input Format

The **STATION** table is described as follows:

![image.png](image.png)

where *LAT_N* is the northern latitude and *LONG_W* is the western longitude.

[문제 링크](https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true)

### Lessons Learned

- 맨해탄 거리
    - 격자(grid) 형태의 도시에서 두 점 사이를 이동할 때 가능한 “직선 경로가 아닌, 격자를 따라 걷는 거리”를 계산하는 방법
    - $d = |c - a| + [d - b|$
- ABS(number)
    - 절대값을 계산하는 함수
    - 절대값은 숫자의 부호를 제거한 값으로, 항상 0이상인 숫자
    - number: 숫자 값(정수, 소수)
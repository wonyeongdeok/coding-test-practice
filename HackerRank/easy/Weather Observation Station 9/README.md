# Weather Observation Station 9

### Problem

Query the list of *CITY* names from **STATION** that *do not start* with vowels. Your result cannot contain duplicates.

### Input Format

The **STATION** table is described as follows:

![image.png](image.png)

where *LAT_N* is the northern latitude and *LONG_W* is the western longitude.

[문제 링크](https://www.hackerrank.com/challenges/weather-observation-station-9/problem?isFullScreen=true)

### Lessons Learned

- MySQL은 기본적으로 대소문자를 구분하지 않는 CHAR 또는 VARCHAR 데이터 타입의 COLLATION(문자열 비교 규칙)을 사용한다.
- 따라서, 모음으로 시작하지 않는 도시 이름을 출력 하기 위해 조건절에 ‘aeiou’를 사용하면 이뿐만 아니라 대문자 ‘AEIOU’로 시작하는 도시 이름에도 동일한 효과가 적용 된다.
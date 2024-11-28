# Weather Observation Station 10

### Problem

Query the list of *CITY* names from **STATION** that *do not end* with vowels. Your result cannot contain duplicates.

### Input Format

The **STATION** table is described as follows:

![image.png](image.png)

[문제 링크](https://www.hackerrank.com/challenges/weather-observation-station-10/problem?isFullScreen=true)

### Lessons Learned

- **SQL 문자열 작업: RIGHT, LEFT, SUBSTRING, REGEXP 비교**
    
    
    | **상황** | **방법** |
    | --- | --- |
    | 끝에서 고정된 문자 추출 | `RIGHT` or `LEFT` |
    | 특정 위치와 길이로 문자 추출 | `SUBSTRING` |
    | 패턴 매칭이 필요한 경우 | `REGEXP` |
- **RIGHT(string, number_of_characters)**
    - string: 컬럼명 또는 직접 지정한 문자열
    - number_of_characters: **오른쪽**에서 반환할 문자 개수
    - 오른쪽 끝에서 지정한 개수만큼 문자 추출 시 가장 간단하고 가독성 높음
- **LEFT(string, number_of_characters)**
    - string: 컬럼명 또는 직접 지정한 문자열
    - number_of_characters: **왼쪽**에서 반환할 문자 개수
    - 왼쪽 끝에서 지정한 개수만큼 문자 추출 시 가장 간단하고 가독성 높음
- **SUBSTRING(string, start_position, length)**
    - string: 컬럼명 또는 직접 지정한 문자열
    - start_position: 시작 위치
    - length: 추출할 문자 수
    - 문자열의 특정 부분을 자유롭게 추출 가능하여 **중간 위치** 추출도 가능
- **REGEXP**
    - **특정 문자열 패턴**을 정의하여 유연한 매칭
    - ex) 이메일 주소, 전화번호, 특정 형식 가진 데이터 검색
    - **정규식의 주요 패턴**
        
        
        | **패턴** | **설명** | **예제** |
        | --- | --- | --- |
        | `^` | 문자열의 **시작** | `^A` → A로 시작하는 문자열 |
        | `$` | 문자열의 **끝** | `z$` → z로 끝나는 문자열 |
        | `.` | **임의의 한 문자** | `a.b` → a와 b 사이에 임의의 한 문자 |
        | `[abc]` | 괄호 안의 **문자 중 하나** | `[aeiou]` → a, e, i, o, u 중 하나 |
        | `[^abc]` | 괄호 안의 **문자 제외** | `[^aeiou]` → 모음 제외 문자 |
        | `[a-z]` | **소문자 범위** | `[a-z]` → 모든 소문자 |
        | `[A-Z]` | **대문자 범위** | `[A-Z]` → 모든 대문자 |
        | `[0-9]` | **숫자 범위** | `[0-9]` → 0부터 9까지 숫자 |
        | `*` | **0개 이상 반복** | `ab*` → a 뒤에 b가 0개 이상 |
        | `+` | **1개 이상 반복** | `ab+` → a 뒤에 b가 1개 이상 |
        | `{n,m}` | **n에서 m번 반복** | `a{2,4}` → a가 2~4번 |
        | ` | ` | **OR 조건** |
        | `\d` | **숫자** (`[0-9]`와 동일) | `\d+` → 숫자 하나 이상 |
        | `\D` | **숫자가 아닌 문자** (`[^0-9]`와 동일) | `\D+` → 숫자가 아닌 문자 |
        | `\w` | **단어 문자** (알파벳, 숫자, `_`) | `\w+` → 알파벳/숫자/밑줄 1개 이상 |
        | `\W` | **단어 문자가 아닌 것** | `\W+` → 특수문자, 공백 등 |
        | `\s` | **공백 문자** | `\s+` → 공백(스페이스, 탭 등) |
        | `\S` | **공백이 아닌 문자** | `\S+` → 공백이 아닌 문자 |
    - **예시**
        - **소문자만 포함된 문자열**
            
            ```sql
            SELECT *
            FROM table_name
            WHERE column_name REGEXP '^[a-z]+$';
            
            ```
            
        - **영어 단어와 숫자가 섞인 경우만 찾기**
            
            ```sql
            SELECT *
            FROM table_name
            WHERE column_name REGEXP '^[a-zA-Z0-9]+$';
            
            ```
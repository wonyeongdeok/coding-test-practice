# Print Prime Numbers

### Problem

Write a query to print all *prime numbers* less than or equal to . Print your result on a single line, and use the ampersand () character as your separator (instead of a space).

For example, the output for all prime numbers  would be:

```
2&3&5&7
```

[문제 링크](https://www.hackerrank.com/challenges/print-prime-numbers/problem?isFullScreen=true)

### Lessons Learned

- 소수는 1과 자신 외에 숫자로 나누어 떨어지지 않는 숫자이다.
- **조건을 충족하면?**
    - `n2.num < n1.num`와 `n1.num % n2.num = 0` 조건을 **모두 만족하는 행이 있는 경우**:
        - 서브쿼리는 **하나 이상의 결과(값)**를 반환합니다.
        - 이때 **`EXISTS`는 `TRUE`로 평가**됩니다.
        - `NOT EXISTS`는 `FALSE`로 평가되므로 **해당 숫자(`n1.num`)는 소수가 아닙니다**.
- **조건을 충족하지 못하면?**
    - `n2.num < n1.num` 또는 `n1.num % n2.num = 0` 조건 중 **하나라도 충족하지 않는 경우**:
        - 서브쿼리는 **결과를 반환하지 않습니다(결과가 비어 있음)**.
        - 이때 **`EXISTS`는 `FALSE`로 평가**됩니다.
        - `NOT EXISTS`는 `TRUE`로 평가되므로 **해당 숫자(`n1.num`)는 소수로 간주됩니다**.
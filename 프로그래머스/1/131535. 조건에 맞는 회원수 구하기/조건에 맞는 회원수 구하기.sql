/*
- 출력: 회원 수
- 2021년 가입
- 나이 20세 이상 29세 이하
*/

SELECT  COUNT(*)
  FROM  USER_INFO
 WHERE  YEAR(JOINED) = 2021
   AND  AGE BETWEEN 20 AND 29;

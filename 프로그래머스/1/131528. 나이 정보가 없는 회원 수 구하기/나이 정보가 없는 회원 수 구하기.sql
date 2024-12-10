/*
- 회원 수 출력
- 나이 정보 없는
- 컬럼명 users
*/

SELECT  COUNT(*) AS USERS
  FROM  USER_INFO
 WHERE  AGE IS NULL;
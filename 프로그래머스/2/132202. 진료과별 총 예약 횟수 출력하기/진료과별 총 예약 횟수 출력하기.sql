/*
진료과 코드, 5월예약건수 출력
조건: 2022년 5월 예약
정렬: 5월예약건수 asc, 진료과 코드 asc
*/

SELECT  MCDP_CD AS '진료과 코드'
        ,COUNT(*) AS '5월예약건수'
  FROM  APPOINTMENT
 WHERE  DATE_FORMAT(APNT_YMD, '%Y-%m') = '2022-05'
 GROUP
    BY  MCDP_CD
 ORDER
    BY  COUNT(*) ASC
        ,MCDP_CD ASC;
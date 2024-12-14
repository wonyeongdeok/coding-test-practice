/*
환자이름, 환자번호, 성별코드, 나이, 전화번호
where 12세 이하, 여자
if 전화번호 is null then 'NONE'
order by 나이 desc, 환자이름 asc
*/

SELECT  PT_NAME
        ,PT_NO
        ,GEND_CD
        ,AGE
        ,IFNULL(TLNO, 'NONE') AS TLNO
  FROM  PATIENT
 WHERE  AGE <= 12
   AND  GEND_CD = 'W'
 ORDER
    BY  AGE DESC
        ,PT_NAME ASC;
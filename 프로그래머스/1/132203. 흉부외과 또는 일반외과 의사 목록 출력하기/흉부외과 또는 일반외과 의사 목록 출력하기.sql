/*
- 의사 이름, 의사ID, 진료과, 고용일자
- 진료과가 흉부외과(CS) or 일반외과(GS)
- 고용일자 내림차순 정렬
- 이름 내림차순 정렬

WHERE절에서 OR 조건 작성 시 특수 연산자 IN을 사용하면 코드를 간결하게 작성 가능
다만, 프로그래머스에서는 IN 연산자가 작동하지 않으므로 OR로 제출할 것 
*/

SELECT  DR_NAME
        ,DR_ID
        ,MCDP_CD
        ,DATE_FORMAT(HIRE_YMD, '%Y-%m-%d')
  FROM  DOCTOR
 WHERE  MCDP_CD IN ('CS', 'GS')
 ORDER
    BY  HIRE_YMD DESC
        ,DR_NAME ASC;

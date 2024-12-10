/*
- 의사 이름, 의사ID, 진료과, 고용일자
- 진료과가 흉부외과(CS) or 일반외과(GS)
- 고용일자 내림차순 정렬
- 이름 내림차순 정렬
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
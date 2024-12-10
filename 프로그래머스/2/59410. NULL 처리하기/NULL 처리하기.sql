/*
- 동물의 생물 종, 이름, 성별및중성화 여부
- 이름 없으면 'No name'
- order by 아이디 asc
*/

SELECT  ANIMAL_TYPE
        ,COALESCE(NAME, 'No name') AS NAME
        ,SEX_UPON_INTAKE
  FROM  ANIMAL_INS
 ORDER
    BY  ANIMAL_ID ASC;
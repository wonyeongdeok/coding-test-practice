/*
- 공장ID, 공장 이름, 주소
- 강원도 위치
*/

SELECT  FACTORY_ID
        ,FACTORY_NAME
        ,ADDRESS
  FROM  FOOD_FACTORY
 WHERE  ADDRESS LIKE '강원%';
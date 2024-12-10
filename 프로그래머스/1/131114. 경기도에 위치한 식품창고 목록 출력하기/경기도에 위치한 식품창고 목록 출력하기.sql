/*
- ID, 이름, 주소, 냉동시설 여부
- 경기도 위치
- if 냉동시설 여부 null then 'n'
- order by 창고 id asc
*/

SELECT  WAREHOUSE_ID
        ,WAREHOUSE_NAME
        ,ADDRESS
        ,COALESCE(FREEZER_YN, 'N') AS FREEZER_YN
  FROM  FOOD_WAREHOUSE
 WHERE  ADDRESS LIKE '경기도%'
 ORDER
    BY  WAREHOUSE_ID ASC;
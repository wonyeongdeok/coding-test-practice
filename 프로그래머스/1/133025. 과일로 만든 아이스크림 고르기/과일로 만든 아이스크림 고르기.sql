/*
아이스크림 맛 출력
where 총주문량 >= 3000 and 주 성분 = 과일
order by 총주문량 desc
*/

SELECT  F.FLAVOR
  FROM  FIRST_HALF F
 INNER
  JOIN  ICECREAM_INFO I
    ON  F.FLAVOR = I.FLAVOR
 WHERE  F.TOTAL_ORDER >= 3000
   AND  I.INGREDIENT_TYPE = 'fruit_based'
 ORDER
    BY  F.TOTAL_ORDER DESC;
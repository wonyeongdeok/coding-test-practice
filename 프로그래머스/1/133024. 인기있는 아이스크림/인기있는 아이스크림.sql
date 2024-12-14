/*
아이스크림의 맛 출력
where 상반기 판매
order by 총주문량 desc
order by shipment_id asc
*/

SELECT  FLAVOR
  FROM  FIRST_HALF
 ORDER
    BY  TOTAL_ORDER DESC
        ,SHIPMENT_ID ASC;
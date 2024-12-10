/*
- query 월별 취소 주문 제외한 주문 금액 합계, 취소 주문 금액 합계, 총 합계
- order by order_month asc
*/
SELECT  STRFTIME('%Y-%m', O.ORDER_DATE) AS order_month
        ,SUM(
            CASE
                WHEN O.ORDER_ID NOT LIKE 'C%' THEN PRICE * QUANTITY
                ELSE 0
            END) AS ordered_amount
        ,SUM(CASE
                 WHEN O.ORDER_ID LIKE 'C%' THEN PRICE * QUANTITY
                 ELSE 0
             END) AS canceled_amount
        ,SUM(PRICE * QUANTITY) AS total_amount
  FROM  ORDERS O
 INNER
  JOIN  ORDER_ITEMS OI
    ON  O.ORDER_ID = OI.ORDER_ID
 GROUP
    BY  STRFTIME('%Y-%m', O.ORDER_DATE)
 ORDER
    BY  STRFTIME('%Y-%m', O.ORDER_DATE);
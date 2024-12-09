/*
- 식품ID, 식품 이름, 식품 코드, 식품분류, 식품 가격
- 가격이 제일 비싼 식품
*/

SELECT  PRODUCT_ID
        ,PRODUCT_NAME
        ,PRODUCT_CD
        ,CATEGORY
        ,PRICE
  FROM  FOOD_PRODUCT
 WHERE  PRICE = (SELECT  MAX(PRICE)
                   FROM  FOOD_PRODUCT);
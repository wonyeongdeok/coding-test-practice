/*
- find the ids
- where both low fat and recyclable
*/

SELECT  PRODUCT_ID
  FROM  PRODUCTS
 WHERE  LOW_FATS = 'Y'    and  RECYCLABLE = 'Y';
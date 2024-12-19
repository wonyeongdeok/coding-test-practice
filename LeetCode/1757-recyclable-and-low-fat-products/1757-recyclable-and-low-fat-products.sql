/*
print: product_id
condition: low_fats = Y and recyclable = Y
*/
SELECT
    PRODUCT_ID
  FROM
    PRODUCTS
 WHERE
    LOW_FATS = 'Y'
    AND RECYCLABLE = 'Y';
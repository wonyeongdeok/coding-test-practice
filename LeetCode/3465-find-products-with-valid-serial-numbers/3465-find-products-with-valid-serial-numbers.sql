/*
find all products whose description contains a vaild serial number pattern
condition
1. start with the letters SN(case-sensitive)
2. followed by exactly 4 digits
3. have a hypen(-) followed by exactly 4 digits
4. serial number must be within the description
5. product_id asc
*/

SELECT
    product_id,
    product_name,
    description
FROM
    products
WHERE
    REGEXP_LIKE(description, '(^|[^A-Za-z0-9])SN[0-9]{4}-[0-9]{4}([^0-9]|$)', 'c')
ORDER BY
    product_id;
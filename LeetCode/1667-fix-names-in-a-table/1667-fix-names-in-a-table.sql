/*
print: user_id, name
condition
 - first char is uppercase and the rest are lowercase
order: user_id asc
*/

SELECT
    USER_ID,
    CONCAT(UPPER(LEFT(NAME, 1)), LOWER(SUBSTRING(NAME, 2, LENGTH(NAME)))) AS NAME
FROM
    USERS
ORDER BY
    USER_ID ASC;
/*
find all the valid email address
1. one @ symbol
2. ends with .com
3. before @ symbol contains only alphanumeric and uderscores
4. after @ symbol and before .com contains domain name that contains only letters
*/

SELECT
    user_id,
    email
FROM
    Users
WHERE
    email REGEXP '^[A-Za-z0-9_]+@[A-Za-z]+\\.com$';
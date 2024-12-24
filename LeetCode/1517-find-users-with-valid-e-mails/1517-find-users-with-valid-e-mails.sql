/*
print: user_id, name, mail
condition:
 - mail is valid
  - upper case, lower case, digits, '_', '.', '-'
  - satrt with a letter
  - domain is '@leetcode.com'
*/
SELECT
    USER_ID,
    NAME,
    MAIL
FROM
    USERS
WHERE
    MAIL REGEXP '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode\\.com$';
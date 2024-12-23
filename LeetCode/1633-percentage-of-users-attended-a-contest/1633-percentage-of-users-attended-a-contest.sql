/*
print: contest_id, percentage
condition:
 - round up to 2
order: percentage desc, contest_id asc
*/

SELECT
    CONTEST_ID,
    ROUND(
        COUNT(USER_ID) / (SELECT COUNT(*)FROM USERS) * 100
    , 2) AS PERCENTAGE
FROM
    REGISTER
GROUP BY
    CONTEST_ID
ORDER BY
    PERCENTAGE DESC,
    CONTEST_ID ASC;
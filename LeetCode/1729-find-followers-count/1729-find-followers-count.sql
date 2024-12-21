/*
print: user_id, followers_count
order: user_id asc
*/

SELECT
    USER_ID,
    COUNT(*) FOLLOWERS_COUNT
FROM
    FOLLOWERS
GROUP BY
    USER_ID
ORDER BY
    USER_ID ASC;
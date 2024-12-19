/*
print: tweet_id
condition: if len(content) > 15 then 'invalid'
*/

SELECT
    TWEET_ID
FROM
    TWEETS
WHERE
    LENGTH(CONTENT) > 15;
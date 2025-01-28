/*
print: user_id, confirmation_rate
condition:
 - confirmation_rate = the number of 'confirmed' messages divided by the total number of requested confirmation messages.
 - the confirmation_rate of a user that did not request any confirmation messages is 0.
 - Round the confirmation rate to two decimal
*/
SELECT
    S.USER_ID,
    IFNULL(ROUND(SUM(ACTION = 'confirmed') / COUNT(*), 2), 0) AS CONFIRMATION_RATE
FROM
    SIGNUPS AS S
LEFT JOIN
    CONFIRMATIONS AS C ON S.USER_ID = C.USER_ID
GROUP BY
    S.USER_ID;
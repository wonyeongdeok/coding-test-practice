/*
print: PLAYER_ID, FIRST_LOGIN
condition:
 - first login date for each player
*/
SELECT
    PLAYER_ID,
    MIN(EVENT_DATE) AS FIRST_LOGIN
FROM
    ACTIVITY
GROUP BY
    PLAYER_ID;
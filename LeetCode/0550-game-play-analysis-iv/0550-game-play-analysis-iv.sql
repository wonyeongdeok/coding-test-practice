/*
print: fraction
conditions:
 - fraction of players that logged in again on the day after day they first logged in,
 - rounded to 2 decimal places
 - count the number of players that logged in for at least two consecutive days starting from their first loin date
 - then divide that number by the total number of players
*/
WITH FIRST_LOGIN AS (
    SELECT
        PLAYER_ID,
        MIN(EVENT_DATE) AS EVENT_DATE
    FROM
        ACTIVITY
    GROUP BY
        PLAYER_ID
),
AGAIN_LOGIN AS (
    SELECT
        DISTINCT A.PLAYER_ID
    FROM
        ACTIVITY AS A
    JOIN
        FIRST_LOGIN AS F ON A.PLAYER_ID = F.PLAYER_ID
    WHERE
        A.EVENT_DATE = DATE_ADD(F.EVENT_DATE, INTERVAL + 1 DAY)
)
SELECT
    ROUND(
        COUNT(*) / (SELECT COUNT(DISTINCT PLAYER_ID) FROM ACTIVITY)
    , 2) AS FRACTION
FROM
    AGAIN_LOGIN;
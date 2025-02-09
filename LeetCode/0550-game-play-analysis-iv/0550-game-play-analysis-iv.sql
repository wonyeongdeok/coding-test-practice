/*
print: fraction
condition:
 - the fraction of players that logged again on the day after the day they "first logged in"
 - round 2 decimal
*/
WITH FIRST_LOGIN_INFO AS (
    SELECT
        PLAYER_ID,
        EVENT_DATE,
        ROW_NUMBER() OVER(PARTITION BY PLAYER_ID ORDER BY EVENT_DATE) AS RN
    FROM
        ACTIVITY
),
TARGET AS (
    SELECT
        A.PLAYER_ID
    FROM
        FIRST_LOGIN_INFO AS F
    JOIN
        ACTIVITY AS A ON F.PLAYER_ID = A.PLAYER_ID
                        AND RN = 1
                        AND A.EVENT_DATE = DATE_ADD(F.EVENT_DATE, INTERVAL 1 DAY)
)
SELECT
    ROUND(
        (SELECT COUNT(DISTINCT PLAYER_ID) FROM TARGET) / (COUNT(DISTINCT PLAYER_ID))
    , 2) AS FRACTION
FROM
    ACTIVITY;
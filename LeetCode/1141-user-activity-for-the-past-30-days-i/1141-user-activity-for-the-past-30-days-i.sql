/*
print: day, active_users
condition:
 - period of 30 days ending 2019-07-27
*/

-- get users within period
WITH GROUP_DAYS AS (
    SELECT
        ACTIVITY_DATE AS DAY,
        COUNT(DISTINCT USER_ID) AS ACTIVE_USERS
    FROM
        ACTIVITY
    WHERE
        ACTIVITY_DATE BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY) AND '2019-07-27'
    GROUP BY
        ACTIVITY_DATE
)
SELECT
    DAY,
    ACTIVE_USERS
FROM
    GROUP_DAYS;
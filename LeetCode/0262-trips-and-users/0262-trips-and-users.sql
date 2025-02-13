/*
print: DAY, CANCELLATION RATE
condition
 - cancellation rate is computed by dividing the number of canceled requests with unbanned users by the total number of requests with unbanned users on that day
 - users(both client and driver) must not be banned
 - between 2013-10-01 and 2013-10-03
 - round up two decimal
*/
WITH NO_BAN_USER_DRIVER AS (
    SELECT
        T.STATUS,
        T.REQUEST_AT
    FROM
        TRIPS AS T
    JOIN
        USERS AS C ON T.CLIENT_ID = C.USERS_ID
    JOIN
        USERS AS D ON T.DRIVER_ID = D.USERS_ID
    WHERE
        C.BANNED = 'No'
        AND D.BANNED = 'No'
        AND T.REQUEST_AT BETWEEN '2013-10-01' AND '2013-10-03'
),
RESULT AS (
    SELECT
        REQUEST_AT AS DAY,
        ROUND(SUM(
            CASE
                WHEN STATUS = 'cancelled_by_client ' OR STATUS = 'cancelled_by_driver' THEN 1
                ELSE 0
            END
        ) / COUNT(*), 2) AS 'CANCELLATION RATE'
    FROM
        NO_BAN_USER_DRIVER
    GROUP BY
        REQUEST_AT
    ORDER BY
        REQUEST_AT
)
SELECT
    *
FROM
    RESULT;

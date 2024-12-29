/*
print: machine_id, processing_time
condition:
 - processing_time is average time of each machine
 - processing_time should be rounded to 3 decimal digits
*/

-- start data
WITH START_DATA AS (
    SELECT
        *
    FROM
        ACTIVITY
    WHERE
        ACTIVITY_TYPE = 'START'
),
-- END DATA
END_DATA AS (
    SELECT
        *
    FROM
        ACTIVITY
    WHERE
        ACTIVITY_TYPE = 'END'
)
SELECT
    S.MACHINE_ID,
    ROUND(AVG(E.TIMESTAMP - S.TIMESTAMP), 3) AS PROCESSING_TIME
FROM
    START_DATA S
JOIN
    END_DATA E ON S.MACHINE_ID = E.MACHINE_ID
                  AND S.PROCESS_ID = E.PROCESS_iD
GROUP BY
    S.MACHINE_ID;
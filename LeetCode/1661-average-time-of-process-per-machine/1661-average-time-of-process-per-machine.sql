/*
print: machine_id, processing_time
condition:
- time to complete a process = endtime - starttime
- round up 3 to processing_time
*/

SELECT
    S.MACHINE_iD,
    ROUND(
        AVG(E.TIMESTAMP - S.TIMESTAMP)
    , 3) AS PROCESSING_TIME
FROM
(
    SELECT
        *
    FROM
        ACTIVITY
    WHERE
        ACTIVITY_TYPE = 'START'
) AS S
INNER JOIN
(
    SELECT
        *
    FROM
        ACTIVITY
    WHERE
        ACTIVITY_TYPE = 'END'
) AS E ON S.MACHINE_ID = E.MACHINE_ID
       AND S.PROCESS_ID = E.PROCESS_ID
GROUP BY
    S.MACHINE_ID;
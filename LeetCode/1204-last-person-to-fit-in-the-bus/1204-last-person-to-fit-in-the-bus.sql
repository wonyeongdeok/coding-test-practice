/*
PRINT: PERSON_NAME
CONDITION
 - bus has a weight limit of 1000 kg
 - who is the last person? without exceeding the weight.
 - only one person board the bus at any given turn
*/

WITH CUMULATED_WEIGHT AS (
    SELECT
        PERSON_NAME,
        TURN,
        SUM(WEIGHT) OVER(ORDER BY TURN) AS CW
    FROM
        QUEUE
),
MAX_TURN AS (
    SELECT
        MAX(TURN) AS MAXTURN
    FROM
        CUMULATED_WEIGHT
    WHERE
        CW <= 1000
)
SELECT
    PERSON_NAME
FROM
    CUMULATED_WEIGHT
WHERE
    TURN = (SELECT MAXTURN FROM MAX_TURN);
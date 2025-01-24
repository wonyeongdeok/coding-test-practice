/*
print: hacker_id, name, total_challenges
condition:
 - if more than one student created the same number of challenges and the count is less than the maximum number ofchallenges created, then exclude those students from the results
order: total_challenges desc, hacker_id,
*/
WITH TOTAL_COUNTS AS (
    SELECT
        H.HACKER_ID,
        H.NAME,
        COUNT(*) AS TOTAL_COUNT
    FROM
        HACKERS AS H
    JOIN
        CHALLENGES AS C ON H.HACKER_ID = C.HACKER_ID
    GROUP BY
        H.HACKER_ID,
        H.NAME
),
MAX_COUNT AS (
    SELECT
        MAX(TOTAL_COUNT) AS MC
    FROM
        TOTAL_COUNTS
),
GROUP_COUNT AS (
    SELECT
        TOTAL_COUNT,
        COUNT(*) AS GC
    FROM
        TOTAL_COUNTS
    GROUP BY
        TOTAL_COUNT
),
RESULT AS (
    SELECT
        T.HACKER_ID,
        T.NAME,
        T.TOTAL_COUNT
    FROM
        TOTAL_COUNTS AS T
    JOIN
        GROUP_COUNT AS G ON T.TOTAL_COUNT = G.TOTAL_COUNT
    WHERE
        T.TOTAL_COUNT = (SELECT MC FROM MAX_COUNT)
        OR G.GC = 1
)
SELECT
    HACKER_ID,
    NAME,
    TOTAL_COUNT
FROM
    RESULT
ORDER BY
    TOTAL_COUNT DESC,
    HACKER_ID;
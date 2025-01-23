/*
PRINT: ID, AGE, COINS_NEEDED, POWER
CONDITION
 -  the minimum number of gold galleons needed to buy each non-evil wand of high power and age
ORDER: POWER DESC, AGE DESC
*/

SELECT
    W.ID,
    P.AGE,
    W.COINS_NEEDED,
    W.POWER
FROM
    WANDS AS W
JOIN
    WANDS_PROPERTY AS P ON W.CODE = P.CODE
JOIN (
    SELECT
        P.AGE,
        W.POWER,
        MIN(W.COINS_NEEDED) AS MIN_COINS
    FROM
        WANDS AS W
    JOIN
        WANDS_PROPERTY AS P ON W.CODE = P.CODE
    WHERE
        P.IS_EVIL = 0
    GROUP BY
        P.AGE, W.POWER
) AS M ON P.AGE = M.AGE
       AND W.POWER = M.POWER
       AND W.COINS_NEEDED = M.MIN_COINS
WHERE
    P.IS_EVIL = 0
ORDER BY
    W.POWER DESC,
    P.AGE DESC;
/*
print: TRAVELLED_DISTANCE
*/
SELECT
    U.NAME,
    IFNULL(SUM(R.DISTANCE), 0) AS TRAVELLED_DISTANCE
FROM
    USERS AS U
LEFT JOIN
    RIDES AS R ON U.ID = R.USER_ID
GROUP BY
    U.ID,
    U.NAME
ORDER BY
    TRAVELLED_DISTANCE DESC,
    U.NAME;
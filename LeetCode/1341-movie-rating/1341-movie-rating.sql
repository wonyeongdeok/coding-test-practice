/*
print: results
condition:
 - find the name of the user who has rated the greatest number of moveies. in case of tie, lexicographically smaller user name
 - find the movie name with the higest average rating in February 2020. in case of a tie, lexicographically smaller movie name
*/
WITH USER_RATING_CNT AS (
    SELECT
        U.USER_ID,
        U.NAME,
        COUNT(*) AS RATING_CNT
    FROM
        USERS AS U
    JOIN
        MOVIERATING AS M ON U.USER_ID = M.USER_ID
    GROUP BY
        U.USER_ID,
        U.NAME
    ORDER BY
        COUNT(*) DESC,
        U.NAME
    LIMIT 1
),
MOVIE_HIGH_RATING AS (
    SELECT
        M.MOVIE_ID,
        M.TITLE,
        AVG(R.RATING) AS AVG_RATING
    FROM
        MOVIERATING AS R
    JOIN
        MOVIES AS M ON R.MOVIE_ID = M.MOVIE_ID
    WHERE
        DATE_FORMAT(CREATED_AT, '%Y-%m') = '2020-02'
    GROUP BY
        M.MOVIE_ID,
        M.TITLE
    ORDER BY
        AVG(R.RATING) DESC,
        M.TITLE
    LIMIT 1
)
SELECT
    NAME AS RESULTS
FROM
    USER_RATING_CNT

UNION ALL

SELECT
    TITLE AS RESULTS
FROM
    MOVIE_HIGH_RATING;
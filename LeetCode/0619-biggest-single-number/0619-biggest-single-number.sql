/*
print: num
- single number
- largest number
*/

-- filter single number
SELECT
    COALESCE(MAX(SINGLE_NUM), NULL) AS NUM
FROM ( SELECT
            MAX(NUM) AS SINGLE_NUM
        FROM
            MYNUMBERS
        GROUP BY
            NUM
        HAVING
            COUNT(*) = 1) AS A;
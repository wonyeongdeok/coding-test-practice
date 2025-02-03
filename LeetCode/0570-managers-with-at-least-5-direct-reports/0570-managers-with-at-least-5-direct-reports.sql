/*
print: name
condition:
 - manger who have employee at least five
*/
WITH TARGET AS (
    SELECT
        M.ID,
        M.NAME
    FROM
        EMPLOYEE AS E
    JOIN
        EMPLOYEE AS M ON E.MANAGERID = M.ID
    GROUP BY
        M.ID,
        M.NAME
    HAVING
        COUNT(*) >= 5
)
SELECT
    NAME
FROM
    TARGET;
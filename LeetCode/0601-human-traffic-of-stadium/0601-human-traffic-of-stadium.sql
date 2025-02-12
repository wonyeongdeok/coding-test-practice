/*
print: ID, VISIT_DATE, PEOPLE
condition:
 - three or more rows with consecutive id
 - people is greater than or equal to 100 
*/

WITH StadiumRanked AS (
    SELECT 
        id, 
        visit_date, 
        people,
        id - ROW_NUMBER() OVER (ORDER BY id) AS grp
    FROM Stadium
    WHERE people >= 100
)
SELECT id, visit_date, people
FROM StadiumRanked
WHERE grp IN (
    SELECT grp
    FROM StadiumRanked
    GROUP BY grp
    HAVING COUNT(*) >= 3
)
ORDER BY visit_date;

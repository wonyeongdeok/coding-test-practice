/*
print: id, movie, description, rating
condition:
- odd-numbered ID
- description that is not 'boring'
order by: rating desc
*/

SELECT
    *
FROM
    CINEMA
WHERE
    MOD(ID, 2) != 0
    AND DESCRIPTION != 'boring'
ORDER BY
    RATING DESC;
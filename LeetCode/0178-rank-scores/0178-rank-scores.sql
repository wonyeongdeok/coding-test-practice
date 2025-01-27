/*
PRINT: score, rank
conditions
 - the score should be ranked from the highest to the lowset
 - if there is a tie between two scores, both should have the same ranking
 - After a tie, the next ranking number should be the next consecutive integer value.
order by
 - score desc
*/


SELECT
    SCORE,
    DENSE_RANK() OVER (ORDER BY SCORE DESC) AS 'RANK'
FROM
    SCORES;
/*
출력: ID
조건:
 - 3세대의 대장균 ID 출력
정렬: ID
*/
WITH RECURSIVE GENERATIONS AS (
    SELECT
        ID,
        PARENT_ID,
        1 AS GENERATION
    FROM
        ECOLI_DATA
    WHERE
        PARENT_ID IS NULL
    
    UNION ALL
    
    SELECT
        E.ID,
        E.PARENT_ID,
        G.GENERATION + 1 AS GENERATION
    FROM
        GENERATIONS AS G
    JOIN
        ECOLI_DATA AS E ON G.ID = E.PARENT_ID
)
SELECT
    ID
FROM
    GENERATIONS
WHERE
    GENERATION = 3
ORDER BY
    ID;
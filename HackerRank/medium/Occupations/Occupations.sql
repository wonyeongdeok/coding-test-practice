/*
print: Doctor, Professor, Singer, Actor
order: name
*/
WITH OCC_RN AS (
    SELECT
        NAME,
        OCCUPATION,
        ROW_NUMBER() OVER(PARTITION BY OCCUPATION ORDER BY NAME) AS RN
    FROM
        OCCUPATIONS
)
SELECT
    MAX(CASE WHEN OCCUPATION = 'Doctor' THEN name END) AS Doctor,
    MAX(CASE WHEN OCCUPATION = 'Professor' THEN name END) AS Professor,
    MAX(CASE WHEN OCCUPATION = 'Singer' THEN name END) AS Singer,
    MAX(CASE WHEN OCCUPATION = 'Actor' THEN name END) AS Actor
FROM
    OCC_RN
GROUP BY
    RN;
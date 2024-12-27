/*
출력: NAME, DATETIME
조건:
 - 입양 못감
 - 가장 오래 보호소에 있음
 - 3마리
정렬: datetime asc
*/

SELECT
    NAME,
    DATETIME
FROM
    ANIMAL_INS
WHERE
    ANIMAL_ID NOT IN (SELECT ANIMAL_ID FROM ANIMAL_OUTS)
ORDER BY
    DATETIME
LIMIT 3;
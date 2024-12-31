/*
출력: ANIMAL_ID, NAME
조건:
 - 입양 기록 있음
 - 보호소 들어온 기록 없음
정렬: ANIMAL_ID
*/
SELECT
    ANIMAL_ID,
    NAME
FROM
    ANIMAL_OUTS
WHERE
    ANIMAL_ID NOT IN (SELECT
                        ANIMAL_ID
                      FROM
                        ANIMAL_INS)
ORDER BY
    ANIMAL_ID;
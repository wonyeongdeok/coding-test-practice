/*
출력: ANIMAL_ID, NAME
조건:
 - 보호시작일보다 입양일이 더 빠름(보호시작일 > 입양일)
정렬: 보호 시작일 asc
*/

SELECT
    I.ANIMAL_ID,
    I.NAME
FROM
    ANIMAL_INS I
JOIN
    ANIMAL_OUTS O ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE
    I.DATETIME > O.DATETIME
ORDER BY
    I.DATETIME;
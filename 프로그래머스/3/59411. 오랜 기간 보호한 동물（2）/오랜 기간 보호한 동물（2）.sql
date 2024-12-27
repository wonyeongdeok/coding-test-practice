/*
출력: ANIMAL_ID, NAME
조건:
 - 입양 간 동물 대상
 - 보호 기간이 가장 긴 두 마리
정렬: 보호기간 desc
*/

SELECT
    O.ANIMAL_ID,
    O.NAME
FROM
    ANIMAL_INS I
JOIN
    ANIMAL_OUTS O ON I.ANIMAL_ID = O.ANIMAL_ID
ORDER BY
    DATEDIFF(O.DATETIME, I.DATETIME) DESC
LIMIT 2;
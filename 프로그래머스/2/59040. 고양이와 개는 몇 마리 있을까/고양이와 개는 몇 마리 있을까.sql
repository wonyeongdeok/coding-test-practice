/*
anymal_type, count 출력
조건: 동물 종류는 고양이와 개, 고양이를 개보다 먼저 조회
*/

SELECT
    ANIMAL_TYPE,
    COUNT(*) AS COUNT
FROM
    ANIMAL_INS
WHERE
    ANIMAL_TYPE IN ('Cat', 'Dog')
GROUP BY
    ANIMAL_TYPE
ORDER BY
    ANIMAL_TYPE ASC;
/*
아이디, 이름, 중성화 여부
조건: sex_upon_intake 컬럼에 'Neutered' 또는 'Spayed'라는 단어 포함 되어 있으면 'O' 아니면 'X'
정렬: 아이디 asc
*/

SELECT
    ANIMAL_ID,
    NAME,
    CASE WHEN SEX_UPON_INTAKE LIKE '%Neutered%' THEN 'O'
         WHEN SEX_UPON_INTAKE LIKE '%Spayed%' THEN 'O'
         ELSE 'X'
    END AS '중성화'
FROM
    ANIMAL_INS
ORDER BY
    ANIMAL_ID ASC;

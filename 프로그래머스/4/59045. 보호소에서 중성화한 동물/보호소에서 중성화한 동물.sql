/*
출력: ANIMAL_ID, ANIMAL_TYPE, NAME
조건:
 - 보호소에들어올 당시 중성화되지 않았지만, 보호소 나갈 당시 중성화된 동물
 - 중성화 X -> 성별 및 중성화 여부에 Intact 표시
 - 중성화 O -> 성별 및 중성화 여부에 Spayed or Neutered
*/

SELECT
    I.ANIMAL_ID,
    I.ANIMAL_TYPE,
    I.NAME
FROM
    ANIMAL_INS AS I
JOIN
    ANIMAL_OUTS AS O ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE
    I.SEX_UPON_INTAKE LIKE '%Intact%'
    AND (O.SEX_UPON_OUTCOME LIKE '%Spayed%' OR O.SEX_UPON_OUTCOME LIKE '%Neutered%')
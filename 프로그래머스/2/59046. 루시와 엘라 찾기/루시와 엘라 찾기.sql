/*
아이디, 이름, 성별, 성별 및 중성화 여부
조건: 이름 in ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty')
*/

SELECT
    ANIMAL_ID,
    NAME,
    SEX_UPON_INTAKE
FROM
    ANIMAL_INS
WHERE
    NAME IN ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty');
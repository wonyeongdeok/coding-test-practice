/*
출력: ID, GENOTYPE, PARENT_GENOTYPE
조건: 자식 대장균은 부모 대장균의 형질을 모두 보유
정렬: ID 오름차순
*/

SELECT
    C.ID,
    C.GENOTYPE,
    P.GENOTYPE AS PARENT_GENOTYPE
FROM
    ECOLI_DATA C
INNER JOIN
    ECOLI_DATA P ON C.PARENT_ID = P.ID
WHERE
    C.GENOTYPE | P.GENOTYPE = C.GENOTYPE
ORDER BY
    C.ID;

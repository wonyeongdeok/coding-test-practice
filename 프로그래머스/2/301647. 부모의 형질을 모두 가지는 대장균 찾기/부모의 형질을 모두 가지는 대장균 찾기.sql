/*
출력: 대장균의 id, 대장균의 형질, 부모 대장균의 형질
조건: 부모의 형질을 모두 보유한 대장균의 id
정렬: id 오름차순
*/

SELECT 
    e1.ID, 
    e1.GENOTYPE, 
    e2.GENOTYPE AS PARENT_GENOTYPE
FROM 
    ECOLI_DATA e1
JOIN 
    ECOLI_DATA e2
ON 
    e1.PARENT_ID = e2.ID
WHERE 
    (e1.GENOTYPE | e2.GENOTYPE) = e1.GENOTYPE
ORDER BY 
    e1.ID;

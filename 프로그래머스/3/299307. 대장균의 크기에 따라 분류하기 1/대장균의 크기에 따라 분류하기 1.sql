/*
출력: id, size
조건:
 - if 대장균 개체 크기 100 이하 then 'LOW'
 - if 대장균 개체 크기 100 초과 1000 이하 then 'MEDIUM'
 - if 대장균 개체 크기 1000 초과 then 'HIGH'
정렬: id asc
*/

SELECT
    ID,
    CASE
        WHEN SIZE_OF_COLONY <= 100 THEN 'LOW'
        WHEN SIZE_OF_COLONY > 100
             AND SIZE_OF_COLONY <= 1000 THEN 'MEDIUM'
        ELSE 'HIGH'
    END AS SIZE
FROM
    ECOLI_DATA
ORDER BY
    ID;
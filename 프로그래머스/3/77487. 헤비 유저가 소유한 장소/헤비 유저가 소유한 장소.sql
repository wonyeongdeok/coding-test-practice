/*
출력: ID, NAME, HOST_ID
조건:
 - 헤비유저 찾기
 - 헤비유저는 공간을 둘 이상 등록한 사람
정렬: ID asc
*/

WITH HEAVY AS (
    SELECT
        HOST_ID
    FROM
        PLACES
    GROUP BY
        HOST_ID
    HAVING
        COUNT(*) >= 2
)
SELECT
    ID,
    NAME,
    HOST_ID
FROM
    PLACES
WHERE
    HOST_ID IN (SELECT HOST_ID FROM HEAVY)
ORDER BY
    ID;
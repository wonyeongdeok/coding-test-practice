/*
출력: 아이템 id, 아이템 명
조건: root 아이템
정렬: 아이템 id 오름
*/

SELECT
    A.ITEM_ID,
    A.ITEM_NAME
FROM
    ITEM_INFO A
INNER JOIN
    ITEM_TREE B ON A.ITEM_ID = B.ITEM_ID
WHERE
    B.PARENT_ITEM_ID IS NULL
ORDER BY
    A.ITEM_ID ASC;
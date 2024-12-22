/*
출력: item_id, item_name, rarity
조건: 희귀도가 rare인 아이템들의 모든 다음 업그레이드 아이템(자식 아이템)
정렬: item_id desc
*/

SELECT
    C.ITEM_ID,
    C.ITEM_NAME,
    C.RARITY
FROM
    ITEM_INFO C
INNER JOIN
    ITEM_TREE P ON C.ITEM_ID = P.ITEM_ID
WHERE
    P.PARENT_ITEM_ID IN (SELECT
                             ITEM_ID
                         FROM
                             ITEM_INFO
                         WHERE RARITY = 'RARE')
ORDER BY
    C.ITEM_ID DESC;
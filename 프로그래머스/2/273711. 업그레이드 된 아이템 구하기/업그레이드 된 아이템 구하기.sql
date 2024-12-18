/*
출력: item_id, item_name, rarity
조건: 희귀도가 rare인 아이템들의 모든 다음 업그레이드 아이템(자식 아이템)
정렬: item_id desc
*/

SELECT
    II.ITEM_ID,
    II.ITEM_NAME,
    II.RARITY
FROM
    ITEM_INFO II
INNER JOIN
    ITEM_TREE IT ON II.ITEM_ID = IT.ITEM_ID
WHERE
    IT.PARENT_ITEM_ID IN (SELECT
                              ITEM_ID
                          FROM
                              ITEM_INFO
                          WHERE
                              RARITY = 'RARE')
ORDER BY
    II.ITEM_ID DESC;
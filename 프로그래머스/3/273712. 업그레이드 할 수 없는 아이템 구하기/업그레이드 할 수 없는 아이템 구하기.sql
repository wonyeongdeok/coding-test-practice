/*
출력: ITEM_ID, ITEM_NAME, RARITY
조건:
 - 더 이상 업그레이드할 수 없는 아이템
  - 즉, 자식 아이템이 없는 아이템
   - 자식 아이템이 없다는 건 parent_item_id에 존재하지 않는 id라는 의미
정렬: ITEM_ID DESC
*/
SELECT
    ITEM_ID,
    ITEM_NAME,
    RARITY
FROM
    ITEM_INFO
WHERE
    ITEM_ID NOT IN (SELECT
                        PARENT_ITEM_ID
                    FROM
                        ITEM_TREE
                    WHERE
                        PARENT_ITEM_ID IS NOT NULL)
ORDER BY
    ITEM_ID DESC;
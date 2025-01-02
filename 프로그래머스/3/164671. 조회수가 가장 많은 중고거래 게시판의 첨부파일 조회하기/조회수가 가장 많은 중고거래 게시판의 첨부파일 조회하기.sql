/*
출력: FILE_PATH
조건:
 - 조회수 가장 높은 거래 게시물
 - 파일 이름 = /home/grep/src/게시글 ID/ 파일 ID + 파일 이름 + 파일 확장자
정렬: FILE ID desc
*/

SELECT
    CONCAT(
        '/home/grep/src/',
        UF.BOARD_ID,
        '/',
        UF.FILE_ID,
        UF.FILE_NAME,
        UF.FILE_EXT
    ) AS FILE_PATH
FROM
    USED_GOODS_BOARD AS UB
JOIN
    USED_GOODS_FILE AS UF ON UB.BOARD_ID = UF.BOARD_ID
WHERE
    VIEWS = (SELECT
               MAX(VIEWS)
             FROM
               USED_GOODS_BOARD)
ORDER BY
    UF.FILE_ID DESC;
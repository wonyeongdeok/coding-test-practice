/*
출력: category, total_sales
조건:
 - 2022년 1월
정렬: category asc 
*/

SELECT
    B.CATEGORY,
    SUM(S.SALES) AS TOTAL_SALES
FROM
    BOOK B
JOIN
    BOOK_SALES S ON B.BOOK_ID = S.BOOK_ID
WHERE
    DATE_FORMAT(S.SALES_DATE, '%Y-%m') = '2022-01'
GROUP BY
    B.CATEGORY
ORDER BY
    B.CATEGORY;
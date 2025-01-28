/*
print: category, accoutns_count
conditions
 - "Low Salary": All the salaries strictly less than $20000.
 - "Average Salary": All the salaries in the inclusive range [$20000, $50000].
 - "High Salary": All the salaries strictly greater than $50000.
 - If there are no accounts in a category, return 0
*/
SELECT
    'Low Salary' AS CATEGORY,
    COUNT(*) AS ACCOUNTS_COUNT
FROM
    ACCOUNTS
WHERE
    INCOME < 20000

UNION ALL

SELECT
    'Average Salary' AS CATEGORY,
    COUNT(*) AS ACCOUNTS_COUNT
FROM
    ACCOUNTS
WHERE
    INCOME BETWEEN 20000 AND 50000

UNION ALL

SELECT
    'High Salary' AS CATEGORY,
    COUNT(*) AS ACCOUNTS_COUNT
FROM
    ACCOUNTS
WHERE
    INCOME > 50000;
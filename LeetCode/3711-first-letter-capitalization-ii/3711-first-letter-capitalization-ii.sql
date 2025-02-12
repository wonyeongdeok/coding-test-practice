/*
print: CONTENT_ID, ORIGINAL_TEXT, CONVERTED_TEXT
 - the first word of each word -> uppercase and the remainings -> lowercase
 - the words connected with a hypen, both parts should be capitalized(top-rated -> Top-Rated)
 - All other formatting and spacing should remain unchanged
*/
WITH RECURSIVE TEXT_SPLIT AS (
    SELECT
        CONTENT_ID,
        CONTENT_TEXT,
        SUBSTRING_INDEX(CONTENT_TEXT, ' ', 1) AS WORD,
        SUBSTRING(CONTENT_TEXT, LENGTH(SUBSTRING_INDEX(CONTENT_TEXT, ' ', 1)) + 2) AS REMAINING_TEXT,
        1 AS WORD_POSITION
    FROM
        USER_CONTENT
    
    UNION ALL

    SELECT
        CONTENT_ID,
        CONTENT_TEXT,
        SUBSTRING_INDEX(REMAINING_TEXT, ' ', 1) AS WORD,
        SUBSTRING(REMAINING_TEXT, LENGTH(SUBSTRING_INDEX(REMAINING_TEXT, ' ', 1)) + 2) AS REMAINING_TEXT,
        WORD_POSITION + 1
    FROM
        TEXT_SPLIT
    WHERE
        LENGTH(REMAINING_TEXT) > 0
),
WORD_TRANSFORM AS (
    SELECT
        CONTENT_ID,
        CONTENT_TEXT,
        WORD_POSITION,
        CASE
            WHEN WORD LIKE '%-%' THEN
                CONCAT(
                    UPPER(LEFT(SUBSTRING_INDEX(WORD, '-', 1), 1)),
                    LOWER(SUBSTRING(SUBSTRING_INDEX(WORD, '-', 1), 2)),
                    '-',
                    UPPER(LEFT(SUBSTRING_INDEX(WORD, '-', -1), 1)),
                    LOWER(SUBSTRING(SUBSTRING_INDEX(WORD, '-', -1), 2))
                )
            ELSE
                CONCAT(
                    UPPER(LEFT(WORD, 1)),
                    LOWER(SUBSTRING(WORD, 2))
                )
        END AS TRANSFORMED_WORD
    FROM
        TEXT_SPLIT
),
TRANSFORMED_WORD_CONCAT AS (
    SELECT
        CONTENT_ID,
        CONTENT_TEXT AS ORIGINAL_TEXT,
        GROUP_CONCAT(TRANSFORMED_WORD ORDER BY WORD_POSITION SEPARATOR ' ') AS CONVERTED_TEXT
    FROM
        WORD_TRANSFORM
    GROUP BY
        CONTENT_ID,
        CONTENT_TEXT
)
SELECT
    *
FROM
    TRANSFORMED_WORD_CONCAT;
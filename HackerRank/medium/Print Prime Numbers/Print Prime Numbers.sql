WITH RECURSIVE NUMBERS AS (
    SELECT
    2 AS NUMBER
    UNION ALL
    SELECT
        NUMBER + 1
    FROM
        NUMBERS
    WHERE
        NUMBER < 1000
),
IS_PRIME AS (
    SELECT
        NUMBER
    FROM
        NUMBERS AS N1
    WHERE
        NOT EXISTS (SELECT
                        1
                    FROM
                        NUMBERS AS N2
                    WHERE
                        N2.NUMBER < N1.NUMBER
                        AND N1.NUMBER % N2.NUMBER = 0)
)
SELECT
    GROUP_CONCAT(NUMBER SEPARATOR '&')
FROM
    IS_PRIME;
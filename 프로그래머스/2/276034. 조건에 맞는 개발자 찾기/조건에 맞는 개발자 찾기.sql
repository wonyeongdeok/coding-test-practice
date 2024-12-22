/*
출력: ID, EMAIL, FIRST_NAME, LAST_NAME
조건:
- python이나 c# 스킬을 가짐
정렬: ID asc
*/

SELECT
    ID,
    EMAIL,
    FIRST_NAME,
    LAST_NAME
FROM
    DEVELOPERS
WHERE
    SKILL_CODE & (SELECT
                    CODE
                  FROM
                    SKILLCODES
                  WHERE
                    NAME = 'Python')
    OR SKILL_CODE & (SELECT
                        CODE
                     FROM
                        SKILLCODES
                     WHERE
                        NAME = 'C#')
ORDER BY
    ID ASC;
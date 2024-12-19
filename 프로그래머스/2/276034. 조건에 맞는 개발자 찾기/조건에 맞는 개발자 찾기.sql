/*
출력: 개발자 id, 이메일, 이름, 성
조건: python이나 c# 스킬 가짐
정렬: ID 오름
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
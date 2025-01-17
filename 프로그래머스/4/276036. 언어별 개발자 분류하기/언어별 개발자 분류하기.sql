/*
GROUP_CONCAT(COLUMN_NAME)
- 특정 그룹 내에서 여러 행의 값을 하나의 문자열로 연결
- 기본적으로 쉼표로 구분 되며 GROUP_CONCAT(COLUMN_NAME SEPARATOR '|')와 같이 구분자 변경 가능
*/

/*
출력: GRADE, ID, EMAIL
조건:
 - A : Front End 스킬과 Python 스킬을 함께 가지고 있는 개발자
 - B : C# 스킬을 가진 개발자
 - C : 그 외의 Front End 개발자
정렬: GRADE, ID
*/
WITH DEVELOPER_GRADES AS (
    SELECT
        CASE
            WHEN GROUP_CONCAT(S.CATEGORY) REGEXP 'Front End'
                 AND GROUP_CONCAT(S.NAME) REGEXP 'Python' THEN 'A'
            WHEN GROUP_CONCAT(S.NAME) REGEXP 'C#' THEN 'B'
            WHEN GROUP_CONCAT(S.CATEGORY) REGEXP 'Front End' THEN 'C'
        ELSE NULL
        END AS GRADE,
        D.ID,
        D.EMAIL
    FROM
        SKILLCODES AS S
    JOIN
        DEVELOPERS AS D ON S.CODE & D.SKILL_CODE
    GROUP BY
        D.ID,
        D.EMAIL
)
SELECT
    GRADE,
    ID,
    EMAIL
FROM
    DEVELOPER_GRADES
WHERE
    GRADE IS NOT NULL
ORDER BY
    GRADE,
    ID;
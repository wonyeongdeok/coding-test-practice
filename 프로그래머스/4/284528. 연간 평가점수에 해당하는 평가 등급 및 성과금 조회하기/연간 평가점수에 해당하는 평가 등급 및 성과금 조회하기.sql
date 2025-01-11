/*
출력: EMP_NO, EMP_NAME, GRADE, BONUS
정렬: 사번 오름차순
*/

-- 사원별 이름, 평균 점수 구하기
WITH GRADE_AVG_SCORE AS (
    SELECT
        EMP_NO,
        AVG(SCORE) AS SCORE,
        CASE
            WHEN AVG(SCORE) >= 96 THEN 'S'
            WHEN AVG(SCORE) >= 90 THEN 'A'
            WHEN AVG(SCORE) >= 80 THEN 'B'
            ELSE 'C'
        END AS GRADE
    FROM
        HR_GRADE
    GROUP BY
        EMP_NO
)
SELECT
    E.EMP_NO,
    E.EMP_NAME,
    G.GRADE,
    CASE
        WHEN GRADE = 'S' THEN E.SAL * 0.2
        WHEN GRADE = 'A' THEN E.SAL * 0.15
        WHEN GRADE = 'B' THEN E.SAL * 0.1
        ELSE 0
    END AS BONUS
FROM
    HR_EMPLOYEES AS E
JOIN
    GRADE_AVG_SCORE AS G ON E.EMP_NO = G.EMP_NO
ORDER BY
    E.EMP_NO;
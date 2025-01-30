/*
PRINT: STUDENT_ID, SUBJECT, FIRST_SCORE, LATEST_SCORE
CONDITION:
 - find the students who have shown improvement
 - have taken exams in the same sbuject on at least two different dates
 - their latest score is that subject is higher than their first score
ORDER
 - STUDENT_ID, SUBJECT
*/

WITH FIRST_EXAM_SCORE AS (
    SELECT
        STUDENT_ID,
        SUBJECT,
        SCORE,
        EXAM_DATE,
        ROW_NUMBER() OVER (PARTITION BY STUDENT_ID, SUBJECT ORDER BY EXAM_DATE) AS FIRST_DATE
    FROM
        SCORES
),
LATEST_EXAM_SCORE AS (
    SELECT
        STUDENT_ID,
        SUBJECT,
        SCORE,
        EXAM_DATE,
        ROW_NUMBER() OVER (PARTITION BY STUDENT_ID, SUBJECT ORDER BY EXAM_DATE DESC) AS LATEST_DATE
    FROM
        SCORES    
)
SELECT
    F.STUDENT_ID,
    F.SUBJECT,
    F.SCORE AS FIRST_SCORE,
    L.SCORE AS LATEST_SCORE
FROM
    FIRST_EXAM_SCORE AS F
JOIN
    LATEST_EXAM_SCORE AS L ON F.STUDENT_ID = L.STUDENT_ID
                              AND F.SUBJECT = L.SUBJECT
                              AND F.FIRST_DATE = L.LATEST_DATE
                              AND F.FIRST_DATE = 1
                              AND L.LATEST_DATE = 1
WHERE
    F.SCORE < L.SCORE
ORDER BY
    STUDENT_ID,
    SUBJECT;
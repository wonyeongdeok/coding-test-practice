/*
print: each teacher_id, unique number of subjects
*/

SELECT
    TEACHER_ID,
    COUNT(DISTINCT SUBJECT_ID) AS CNT
FROM
    TEACHER
GROUP BY
    TEACHER_ID;
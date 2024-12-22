-- /*
-- print: student_id, student_name, subject_name, attended_exams
-- order: student_id asc, subject_name asc
-- */

SELECT
    ST.STUDENT_ID,
    ST.STUDENT_NAME,
    SU.SUBJECT_NAME,
    COUNT(E.STUDENT_ID) AS ATTENDED_EXAMS
FROM
    STUDENTS ST
CROSS JOIN
    SUBJECTS SU
LEFT JOIN
    EXAMINATIONS E ON ST.STUDENT_ID = E.STUDENT_ID
                      AND SU.SUBJECT_NAME = E.SUBJECT_NAME
GROUP BY
    ST.STUDENT_ID,
    ST.STUDENT_NAME,
    SU.SUBJECT_NAME
ORDER BY
    ST.STUDENT_ID,
    SU.SUBJECT_NAME;


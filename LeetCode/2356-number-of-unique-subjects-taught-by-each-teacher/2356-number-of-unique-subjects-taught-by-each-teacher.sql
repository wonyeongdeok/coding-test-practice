# Write your MySQL query statement below
/*
the number of unique subjects each teacher
*/
SELECT  TEACHER_ID
        ,COUNT(DISTINCT SUBJECT_ID) AS CNT
  FROM  TEACHER
 GROUP
    BY  TEACHER_ID;
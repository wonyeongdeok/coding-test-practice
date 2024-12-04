/*
- output name, grade, mark
- grade >= 8
- order by grade desc, name asc
- replace name with 'NULL' if grade < 8 then order by grade desc, mark asc
*/

-- UNION ALL
SELECT  S.NAME
        ,G.GRADE
        ,S.MARKS
  FROM  STUDENTS S
  LEFT
  JOIN  GRADES G
    ON  S.MARKS BETWEEN G.MIN_MARK AND G.MAX_MARK
 WHERE  G.GRADE >= 8
 
 UNION
   ALL
  
SELECT  'NULL' AS NAME
        ,G.GRADE
        ,S.MARKS
  FROM  STUDENTS S
  LEFT
  JOIN  GRADES G
    ON  S.MARKS BETWEEN G.MIN_MARK AND G.MAX_MARK
 WHERE  G.GRADE < 8
 
 ORDER
    BY  GRADE DESC,
        CASE
            WHEN GRADE >= 8 THEN NAME
            ELSE 'NULL'
        END ASC,
        CASE
            WHEN GRADE < 8 THEN MARKS
            ELSE 'NULL'
        END ASC;

/*
SELECT  CASE
            WHEN GRADE < 8 THEN 'NULL'
            ELSE S.NAME
        END AS NAME
        ,G.GRADE
        ,S.MARKS
  FROM  STUDENTS S
  LEFT 
  JOIN  GRADES G
    ON  S.MARKS BETWEEN G.MIN_MARK AND G.MAX_MARK
 ORDER
    BY  G.GRADE DESC
        ,CASE
             WHEN G.GRADE >= 8 THEN S.NAME
             ELSE NULL
         END ASC
        ,CASE
             WHEN G.GRADE < 8 THEN S.MARKS
             ELSE NULL
         END ASC;
*/
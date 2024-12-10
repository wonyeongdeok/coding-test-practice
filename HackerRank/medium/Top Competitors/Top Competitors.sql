/*
- output hacker_id, name
- where hacKer get full score more than one challenge.
- order by desc total number challenges
- if got full score in same number of challenges then order by asc hacker_Id
*/

SELECT  S.HACKER_ID
        ,H.NAME
  FROM  HACKERS H
 INNER
  JOIN  SUBMISSIONS S
    ON  H.HACKER_ID = S.HACKER_ID
 INNER
  JOIN  CHALLENGES C
    ON  S.CHALLENGE_ID = C.CHALLENGE_ID
 INNER
  JOIN  DIFFICULTY D
    ON  C.DIFFICULTY_LEVEL = D. DIFFICULTY_LEVEL
 WHERE  D.SCORE = S.SCORE
 GROUP
    BY  S.HACKER_ID
        ,H.NAME
HAVING  COUNT(DISTINCT S.CHALLENGE_ID) > 1
 ORDER
    BY  COUNT(DISTINCT S.CHALLENGE_ID) DESC
        ,S.HACKER_ID ASC;
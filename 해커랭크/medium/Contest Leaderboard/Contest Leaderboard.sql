/*
- hacker_id, name, total score
- order by total score desc, id
- exclude total socre = 0

1. inner join hackers and submissions on hackers.hacker_id=submissions.hacker_id
2. make custom table - group by hacker_id, name, challenge_id then get max(score) as max_score
3. group by hacker_id, name then get sum(max_score) as total_score
4. having total_score > 0
5. order by total_score desc, id asc
*/

SELECT  HACKER_ID
        ,NAME
        ,SUM(MAX_SCORE) AS TOTAL_SCORE
  FROM  (SELECT  H.HACKER_ID
                 ,H.NAME
                 ,S.CHALLENGE_ID
                 ,MAX(S.SCORE) AS MAX_SCORE
           FROM  HACKERS H
          INNER
           JOIN  SUBMISSIONS S ON H.HACKER_ID = S.HACKER_ID
          GROUP
             BY  H.HACKER_ID
                 ,H.NAME
                 ,S.CHALLENGE_ID) AS A
 GROUP
    BY  HACKER_ID
        ,NAME
HAVING  TOTAL_SCORE > 0
 ORDER
    BY  TOTAL_SCORE DESC
        ,HACKER_ID ASC;
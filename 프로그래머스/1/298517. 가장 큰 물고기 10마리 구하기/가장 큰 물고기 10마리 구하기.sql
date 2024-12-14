/*
ID, LENTH 출력
where 가장 큰 물고기 10마리
order by length desc, id asc
*/

SELECT  ID
        ,LENGTH
  FROM  FISH_INFO
 ORDER
    BY  LENGTH DESC
        ,ID ASC
 LIMIT  10;
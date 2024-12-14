/*
개발자 id, 이메일, 이름, 성 출력
where python 스킬 가짐
order by 개발자id
*/

SELECT  ID
        ,EMAIL
        ,FIRST_NAME
        ,LAST_NAME
  FROM  DEVELOPER_INFOS
 WHERE  SKILL_1 = 'Python'
    OR  SKILL_2 = 'Python'
    OR  SKILL_3 = 'Python'
 ORDER
    BY  ID ASC;
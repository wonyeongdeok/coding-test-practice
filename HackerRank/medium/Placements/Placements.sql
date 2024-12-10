/*
- inner join students, friends on students.id = friends.id
- inner join students, packages on students.id = packages.id for salary
- inner join friends, packages on friends.friend_id = packages.id for friends salary
- where salary < friends salary
- order by friends salary
*/

SELECT  S.NAME
  FROM  STUDENTS S
 INNER 
  JOIN  FRIENDS F ON S.ID = F.ID
 INNER 
  JOIN  PACKAGES P1 ON S.ID = P1.ID
 INNER 
  JOIN  PACKAGES P2 ON F.FRIEND_ID = P2.ID
 WHERE  P1.SALARY < P2.SALARY
 ORDER
    BY  P2.SALARY;
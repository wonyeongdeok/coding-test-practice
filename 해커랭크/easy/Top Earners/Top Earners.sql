/*
1. get maximum total earnings
2. get total number of employees who have maximum total earnings.
3. output 2 space-seperated integers
- get maximum earnings
- count employee who have maximum earnings
*/

SELECT  MAX(MONTHS * SALARY)
        ,COUNT(*))
  FROM  EMPLOYEE
 WHERE  MONTHS * SALARY = (SELECT  MAX(MONTHS * SALARY)
                             FROM  EMPLOYEE);
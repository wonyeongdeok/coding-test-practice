/*
- get average monthly salaries
- get diffence with no-zero calulation and zero calculation
- round it up to next integer
*/

SELECT  CEIL(
            AVG(SALARY) -
            AVG(REPLACE(SALARY, 0, ''))
        )
  FROM  EMPLOYEES;
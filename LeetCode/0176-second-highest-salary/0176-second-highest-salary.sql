/*
print: secondhighestsalary
condition:
 - find second highest distinct salary
 - if there is no second highest salary, return null
*/
SELECT
    (SELECT
        SALARY
    FROM
        EMPLOYEE
    ORDER BY
        SALARY DESC
    LIMIT 1 OFFSET 1)
AS SECONDHIGHESTSALARY;
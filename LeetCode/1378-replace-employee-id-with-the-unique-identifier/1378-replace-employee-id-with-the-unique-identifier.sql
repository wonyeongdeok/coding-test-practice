/*
print: unique_id, name
condition: if a user doesn`t have a unique ID then null
*/

SELECT
    EU.UNIQUE_ID,
    E.NAME
FROM
    EMPLOYEES E
INNER JOIN
    EMPLOYEEUNI EU ON E.ID = EU.ID;
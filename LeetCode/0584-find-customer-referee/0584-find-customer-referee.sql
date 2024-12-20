/*
print: name
condition:
- not referred by id 2
*/
SELECT
    NAME
FROM
    CUSTOMER
WHERE
    REFEREE_ID != 2
    OR REFEREE_ID IS NULL;
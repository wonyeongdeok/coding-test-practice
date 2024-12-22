/*
print: id, email
condition:
 - delete all duplicate emails keeping one unique email with the smallest id
 - use DELETE
*/

DELETE
    P1
FROM
    PERSON P1
JOIN
    Person P2
ON P1.EMAIL = P2.EMAIL
WHERE
    P1.ID > P2.ID;
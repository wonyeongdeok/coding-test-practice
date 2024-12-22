/*
print: id, email
condition:
 - delete all duplicate emails keeping one unique email with the smallest id
 - use DELETE
*/

DELETE p1
FROM Person p1
JOIN Person p2
ON p1.email = p2.email AND p1.id > p2.id;

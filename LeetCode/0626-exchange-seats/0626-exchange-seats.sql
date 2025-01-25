/*
print: ID, STUDENT
condition:
 - swap the seat id of of every two consecutive students
 - if the number of students is odd, the id of the last student is not swapped.
order: ID
*/
SELECT
    CASE
        WHEN ID = MAX(ID) OVER() AND ID % 2 != 0 THEN ID
        WHEN ID % 2 != 0 THEN ID + 1
        WHEN ID % 2 = 0 THEN ID - 1
    END AS ID,
    STUDENT
FROM
    SEAT
ORDER BY
    ID;
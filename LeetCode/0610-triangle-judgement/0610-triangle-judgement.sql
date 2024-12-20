/*
print: x, y, z, triangle
codition:
- can form a traingle
    - if there are three line a, b, c
    - a + b > c and b + c > a and c + a > b
*/

SELECT
    X,
    Y,
    Z,
    CASE WHEN X + Y > Z AND Y + Z > X AND Z + X > Y THEN 'Yes'
         ELSE 'No'
    END AS TRIANGLE
FROM
    TRIANGLE;
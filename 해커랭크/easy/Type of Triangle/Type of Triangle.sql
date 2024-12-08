/*
- get type of triangles
- if 3 same is Equilateral
- if 2 same is Isosceles
- if all differect then scalene
- if don`t form a triangle then Not a Triangle

- check 1 : can be triangle?
    - every sides are more than 0 and integer.
    - sum of two sides is more than other side.
- check 2 : what is the type of triangle?
- */

SELECT  CASE
            WHEN A <= 0 OR B <= 0 OR C<= 0 THEN 'Not A Triangle'
            WHEN A + B <= C OR B + C <= A OR C + A <= B THEN 'Not A Triangle'
            WHEN A = B AND B = C THEN 'Equilateral'
            WHEN A = B OR B = C OR C = A THEN 'Isosceles'
            WHEN A != B AND B != C AND C != A THEN 'Scalene'
        ELSE 'NULL'
        END AS TYPE_TRIANGLE
  FROM  TRIANGLES;
/*
PRINT: ID, NAME, SEX, SALARY
CONDITION:
 - change all 'f' values to'm' and vice versa
 - don`t select. do update
*/

UPDATE
    SALARY
SET
    SEX = CASE
              WHEN SEX = 'm' THEN 'f'
              ELSE 'm'
          END;
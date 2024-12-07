/*
- under 17
- not ends with vowels
- get title
*/

SELECT  TITLE
  FROM  FILM
 WHERE  RATING IN ('R', 'NC-17')
   AND  SUBSTRING(TITLE, -1, 1) NOT IN ('A', 'E', 'I', 'O', 'U');
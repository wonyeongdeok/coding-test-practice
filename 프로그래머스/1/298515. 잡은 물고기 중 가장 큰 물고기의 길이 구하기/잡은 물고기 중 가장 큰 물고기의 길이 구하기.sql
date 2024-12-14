/*
가장 큰 물고기 길이를 'cm' 붙여 출력 as max_length
*/

SELECT  CONCAT(MAX(LENGTH), 'cm') AS MAX_LENGTH
  FROM  FISH_INFO;
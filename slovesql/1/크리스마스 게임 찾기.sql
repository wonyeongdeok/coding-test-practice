# SQLite
SELECT  GAME_ID
        ,NAME
        ,YEAR
  FROM  GAMES
 WHERE  NAME LIKE '%Christmas%'
    OR  NAME LIKE '%Santa%';
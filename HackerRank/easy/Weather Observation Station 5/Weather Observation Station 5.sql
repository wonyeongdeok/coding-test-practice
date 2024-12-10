/*
- query shortest name and length
- query longest name and length
- order by name asc

- get number of shortest name
- order by name asc
- limit 1
- union all
- get number of longest name
- order by name asc
- limit 1
*/

(
    SELECT  CITY
            ,LENGTH(CITY)
      FROM  STATION
     WHERE  LENGTH(CITY) = (SELECT  MIN(LENGTH(CITY))
                              FROM  STATION)
     ORDER
        BY  CITY ASC
     LIMIT  1
)
UNION ALL
(
    SELECT  CITY
            ,LENGTH(CITY)
      FROM  STATION
     WHERE  LENGTH(CITY) = (SELECT  MAX(LENGTH(CITY))
                              FROM  STATION)
     ORDER
        BY  CITY ASC
     LIMIT  1
);
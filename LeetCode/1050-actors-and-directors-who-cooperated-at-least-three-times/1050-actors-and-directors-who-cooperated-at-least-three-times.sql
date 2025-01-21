/*
PRINT: ACTOR_ID, DIRECTOR_ID
CONDITION:
 - actor has cooperated with the director at least three times
*/
SELECT
    actor_id,
    director_id
FROM
    ActorDirector
GROUP BY
    actor_id,
    director_id
HAVING
    COUNT(*) >= 3;

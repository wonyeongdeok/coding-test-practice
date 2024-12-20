/*
print: id
condition:
- ahuthor that viewed at least one of their own articles
order by: id asc
*/

SELECT
    DISTINCT AUTHOR_ID AS ID
FROM
    VIEWS
WHERE
    viewer_id  = AUTHOR_ID
ORDER BY
    ID ASC;
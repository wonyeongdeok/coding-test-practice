/*
print: tiv_2016
conditions:
 - the sum of all total investment values in 2016
 - policyholders have the same tiv_2015 value as one or more other policyholders
 - policyholders are not loacted in the same city as any other policyholder attribute pairs must be unique.
 - round to two decimal
*/
WITH FIRST_CONDITION AS (
    SELECT
        TIV_2015
    FROM
        INSURANCE
    GROUP BY
        TIV_2015
    HAVING
        COUNT(*) >= 2
),
SECOND_CONDITION AS (
    SELECT
        LAT,
        LON
    FROM
        INSURANCE
    GROUP BY
        LAT,
        LON
    HAVING
        COUNT(*) = 1
)
SELECT
    ROUND(SUM(TIV_2016), 2) AS TIV_2016
FROM
    INSURANCE
WHERE
    TIV_2015 IN (SELECT TIV_2015 FROM FIRST_CONDITION)
    AND LAT IN (SELECT LAT FROM SECOND_CONDITION)
    AND LON IN (SELECT LON FROM SECOND_CONDITION);
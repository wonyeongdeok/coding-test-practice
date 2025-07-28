-- Find users who converted from free trial to paid subsctiption
WITH coverted_users AS (
    SELECT
        DISTINCT user_id
    FROM
        UserActivity
    WHERE
        activity_type = 'paid'
)

SELECT
    a.user_id,
    ROUND(
        AVG(
        CASE WHEN activity_type = 'free_trial' THEN activity_duration
             ELSE NULL
        END
    ), 2) AS trial_avg_duration,
    ROUND(
        AVG(
        CASE WHEN activity_type = 'paid' THEN activity_duration
             ELSE NULL
        END
    ), 2) AS paid_avg_duration
FROM
    UserActivity a
JOIN
    coverted_users b ON a.user_id = b.user_id
GROUP BY
    a.user_id
ORDER BY
    a.user_Id;

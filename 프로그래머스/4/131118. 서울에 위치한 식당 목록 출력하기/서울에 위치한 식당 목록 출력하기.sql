/*
출력: REST_ID, REST_NAME, FOOD_TYPE, FAVORITES, ADDRESS, SCORE
조건:
 - 서울 위치한 식당 대상
 - 리뷰 평균점수 소수 세번째 자리에서 반올림
정렬: SCORE DESC, FAVORITES DESC
*/
SELECT
    I.REST_ID,
    I.REST_NAME,
    I.FOOD_TYPE,
    I.FAVORITES,
    I.ADDRESS,
    ROUND(AVG(R.REVIEW_SCORE), 2) AS SCORE
FROM
    REST_INFO AS I
JOIN
    REST_REVIEW AS R ON I.REST_ID = R.REST_ID
WHERE
    LEFT(I.ADDRESS, 2) = '서울'
GROUP BY
    I.REST_ID,
    I.REST_NAME,
    I.FOOD_TYPE,
    I.FAVORITES,
    I.ADDRESS
ORDER BY
    SCORE DESC,
    I.FAVORITES DESC;
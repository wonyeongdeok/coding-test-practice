/*
출력: food_type, rest_id, rest_name, favorites
조건:
 - 음식종류별 즐겨찾기수 가장 많은 식당
정렬: 음식 종류 desc
*/
SELECT
    FOOD_TYPE,
    REST_ID,
    REST_NAME,
    FAVORITES
FROM (SELECT
          *,
          ROW_NUMBER() OVER(PARTITION BY FOOD_TYPE ORDER BY FAVORITES DESC) AS RN
      FROM
          REST_INFO) AS A
WHERE
    RN = 1
ORDER BY
    FOOD_TYPE DESC;
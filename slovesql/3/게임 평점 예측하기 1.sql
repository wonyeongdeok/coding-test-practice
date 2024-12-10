/*
- 출력: game_id, name, critic_score, critic_count, user_score, user_count
- 조건:
  - 2015년 이후 발매한 게임 중 누락된 평점 정보가 있는 게임 대상
  - 같은 장르를 가진 전체 게임의 평균 평점과 평균 평론가 수, 평균 사용자 수로 결측치 대체 
  - 평론가 평균 평점, 사용자 평균 평점 소수점 셋째까지 출력
  - 사용자 수는 올림
*/

-- 평론가 평균 평점, 평론가 평균 수, 사용자 평균 평점, 사용자 평균 수
SELECT  GENRE_ID
        ,ROUND(AVG(CRITIC_SCORE), 3) AS CRITIC_SCORE
        ,CEIL(AVG(CRITIC_COUNT)) AS CRITIC_COUNT
        ,ROUND(AVG(USER_SCORE), 3) AS USER_SCORE
        ,CEIL(AVG(USER_COUNT)) AS USER_COUNT
  FROM  GAMES
 GROUP
    BY  GENRE_ID
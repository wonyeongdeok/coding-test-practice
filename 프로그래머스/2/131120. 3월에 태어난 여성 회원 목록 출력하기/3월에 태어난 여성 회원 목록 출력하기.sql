/*
출력: id, 이름, 성별, 생년월일
조건: 생일 3월, 성별 여성, if 전화번호 is null then 출력 제외
정렬: id asc
*/

SELECT
    MEMBER_ID,
    MEMBER_NAME,
    GENDER,
    DATE_FORMAT(DATE_OF_BIRTH, '%Y-%m-%d') AS DATE_OF_BIRTH
FROM
    MEMBER_PROFILE
WHERE
    MONTH(DATE_OF_BIRTH) = 3
    AND GENDER = 'W'
    AND TLNO IS NOT NULL
ORDER BY
    MEMBER_ID ASC;
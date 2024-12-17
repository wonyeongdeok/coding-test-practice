/*
출력: 점수, 사번, 성명, 직책, 이메일
조건: 2022년, 평가 점수 최고점

2022년 제한
최고점 구하고 그에 해당하는 사번과 같이 출력
*/

SELECT
    SUM(HG.SCORE) AS SCORE,
    HG.EMP_NO,
    HE.EMP_NAME,
    HE.POSITION,
    HE.EMAIL
FROM
    HR_EMPLOYEES HE
INNER JOIN
    HR_GRADE HG ON HE.EMP_NO = HG.EMP_NO
WHERE
    YEAR = 2022
GROUP BY
    HG.EMP_NO,
    HE.EMP_NAME,
    HE.POSITION,
    HE.EMAIL
HAVING
    SUM(HG.SCORE) = (SELECT
                        MAX(TOTAL_SCORE)
                     FROM
                        (SELECT
                            SUM(SCORE) AS TOTAL_SCORE
                         FROM
                            HR_GRADE
                         WHERE
                            YEAR = 2022
                         GROUP BY
                            EMP_NO) AS TEMP
                     );
/*
자동차 리스트 출력
where 네비게이션 옵션 포함
order by 자동차 id desc;
*/

SELECT  *
  FROM  CAR_RENTAL_COMPANY_CAR
 WHERE  OPTIONS LIKE '%네비게이션%'
 ORDER
    BY  CAR_ID DESC;
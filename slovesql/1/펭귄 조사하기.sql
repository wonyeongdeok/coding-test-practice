/*
1. 펭귄의 종과 서식지 출력
2. 서식지별 펭귄 종 중복X
*/

SELECT  SPECIES
        ,ISLAND
  FROM  PENGUINS
 GROUP
    BY  ISLAND
        ,SPECIES
 ORDER
    BY  ISLAND ASC;
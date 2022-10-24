-- 22년 5월에 예약한 환자 수를 진료과코드 별
-- 예약한 환자 수가 같다면 진료과 코드를 기준으로 오름차

select MCDP_CD as '진료과코드', count(APNT_YMD) as '5월예약건수' 
from  APPOINTMENT 
where  APNT_YMD like '2022-05%' 
group by MCDP_CD 
order by count(APNT_YMD) , MCDP_CD
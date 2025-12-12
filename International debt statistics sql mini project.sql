
select count(distinct country_name )as total_distinct_countries
from public.international_debt;

select country_name, sum(debt) as total_debt
from public.international_debt
group by country_name 
order by total_debt desc
limit 1;


select country_name, indicator_name, min(debt) as lowest_repayment
from public.international_debt
where indicator_code = 'DT.AMT.DLXF.CD'
group by country_name, indicator_name
order by  lowest_repayment asc
limit 1;
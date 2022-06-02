

      create or replace transient table main_assignment.dbt.m1_query1  as
      (

SELECT 
	avg(n.nav) as avg_nav, 
	avg(n.repurchase_price) as avg_repurchase_price, 
	avg(n.sale_price) as avg_sales_price 

from "MAIN_ASSIGNMENT"."DBT"."NAVHISTORY" n 
left join "MAIN_ASSIGNMENT"."DBT"."MUTUALFUND" m 
on n.code = m.code 

group by 
	m.category_id, 
	month(n.nav_date)
      );
    
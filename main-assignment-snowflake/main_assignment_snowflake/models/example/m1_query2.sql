{{ config(materialized='table') }}

select nav_date as date, nav from "MAIN_ASSIGNMENT"."DBT"."NAVHISTORY" where nav IN (select max(nav) as nav from "MAIN_ASSIGNMENT"."DBT"."NAVHISTORY"
UNION ALL select min(nav) as nav from "MAIN_ASSIGNMENT"."DBT"."NAVHISTORY")

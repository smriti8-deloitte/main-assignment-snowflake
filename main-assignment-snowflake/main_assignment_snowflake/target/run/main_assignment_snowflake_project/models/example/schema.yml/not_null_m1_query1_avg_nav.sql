select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select avg_nav
from main_assignment.dbt.m1_query1
where avg_nav is null



      
    ) dbt_internal_test
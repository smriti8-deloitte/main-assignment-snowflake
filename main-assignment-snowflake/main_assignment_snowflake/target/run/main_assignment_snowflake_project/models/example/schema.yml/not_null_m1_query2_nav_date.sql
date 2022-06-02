select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select nav_date
from main_assignment.dbt.m1_query2
where nav_date is null



      
    ) dbt_internal_test
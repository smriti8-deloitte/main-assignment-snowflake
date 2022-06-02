
  create or replace  view main_assignment.dbt.my_second_dbt_model
  
   as (
    -- Use the `ref` function to select from other models

select *
from main_assignment.dbt.my_first_dbt_model
where id = 1
  );

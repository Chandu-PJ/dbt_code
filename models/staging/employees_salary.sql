{{ config(
    materialized='table') 
    }}


with
emp as (
    select id,
           first_name, 
           salary,
           tax,
           ({{calculate_amount('salary','tax')}}) as total_amount
     from 
    {{source('datafeed_shared_schema','emp')}}
)
select * from emp

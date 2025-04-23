

{{ config(
    materialized="table",
    pre_hook="DELETE from {{ this }} where id =2",
    post_hook="DELETE from {{source('datafeed_shared_schema','raw_orders')}} where id=3"
) }}


WITH tb1 as(
    select 
    *
    from {{source('datafeed_shared_schema','raw_orders')}})
select * from tb1

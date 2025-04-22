{{ config(materialized='view') }}

select * from {{source('datafeed_shared_schema','raw_customerdata')}}

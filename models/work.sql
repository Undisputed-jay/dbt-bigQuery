{{ config(materialized = "table")}}

select *
from raw.customer
limit 100
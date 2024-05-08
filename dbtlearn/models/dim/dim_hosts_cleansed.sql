{{
    config(
        materialized = 'view'
    )
}}
WITH src_hosts AS (
    SELECT * FROM {{ ref("scr_hosts")}}
)
SELECT
  host_id, 
  nvl(host_name, 'Anonymous') as host_name,
  IS_SUPERHOST, 
  CREATED_AT, 
  UPDATED_AT 
from src_hosts
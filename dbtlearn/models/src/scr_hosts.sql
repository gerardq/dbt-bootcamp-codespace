WITH raw_hosts AS (
    SELECT * from AIRBNB.RAW.RAW_HOSTS
)
SELECT 
  ID as host_id, 
  NAME as host_name, 
  IS_SUPERHOST, 
  CREATED_AT, 
  UPDATED_AT 
FROM raw_hosts
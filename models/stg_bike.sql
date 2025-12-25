with stage as(
    select 
    bike_id,
    tripduration,
    replace(starttime,'"','') as starttime,
    replace(stoptime,'"','') as stoptime,
    start_station_id,
    start_station_name,
    start_station_latitude as start_station_lat,
    start_station_longitude as start_station_lng,
    end_station_id,
    end_station_name,
    end_station_latitude as end_lat,
    end_station_longitude as end_lng,
    user_type,
    birth_year
    from {{ source('demo', 'bike') }}
    limit 10
)
select *
from stage
with trip as(
    select 
    bike_id,
    DATE(TO_TIMESTAMP(starttime)) as trip_start_date,
    -- DATE(TO_TIMESTAMP(stoptime)) as trip_end_date,
    start_station_id as start_station_id,
    end_station_id as end_station_id,
    user_type,
    TIMESTAMPDIFF(SECOND, TO_TIMESTAMP(starttime),TO_TIMESTAMP(stoptime)) as trip_duration_seconds,
    -- TIMEDIFF(DAY,trip_end_date, trip_start_date) as trip_duration_days
    from {{ ref('stg_bike') }}
    -- where ride_id != 'ride_id'
)
select * from trip




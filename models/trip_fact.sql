with trip as(
    select 
    ride_id,
    rideable_type,
    DATE(TO_TIMESTAMP(started_at)) as trip_start_date,
    -- DATE(TO_TIMESTAMP(ended_at)) as trip_end_date,
    start_station_id as start_station_id,
    end_station_id as end_station_id,
    member_csual as member_casual,
    TIMESTAMPDIFF(SECOND, TO_TIMESTAMP(started_at),TO_TIMESTAMP(ended_at)) as trip_duration_seconds,
    -- TIMEDIFF(DAY,trip_end_date, trip_start_date) as trip_duration_days
    from {{ source('demo', 'bike') }}
    where ride_id != 'ride_id'
)
select * from trip

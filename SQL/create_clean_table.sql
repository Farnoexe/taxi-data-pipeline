CREATE TABLE taxi_clean_data_v4
WITH (
    format = 'PARQUET',
    external_location = 's3://metroville-traffic-analytics/taxi-data-clean-v4/'
) AS
SELECT
    pickup,
    dropoff,
    passengers,
    distance,
    fare,
    tip,
    tolls,
    total,
    color,
    payment,
    pickup_zone,
    dropoff_zone,
    pickup_borough,
    dropoff_borough
FROM taxi_raw_data_v3
WHERE passengers > 0;

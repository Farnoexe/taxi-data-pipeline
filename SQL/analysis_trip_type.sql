SELECT
    CASE 
        WHEN distance < 2 THEN 'Short'
        WHEN distance < 5 THEN 'Medium'
        ELSE 'Long'
    END AS trip_type,
    COUNT(*) AS trip_count,
    ROUND(AVG(fare), 2) AS avg_fare
FROM taxi_clean_data_v4
GROUP BY 1
ORDER BY avg_fare DESC;

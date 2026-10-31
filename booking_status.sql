SELECT booking_status,
       COUNT(*) AS rides
FROM uber_db.uber_rides
GROUP BY booking_status
ORDER BY rides DESC;
SELECT
    COUNT(*)                                               AS total_bookings,
    SUM(booking_status = 'Completed')                      AS successful_bookings,
    SUM(booking_status = 'Cancelled by Customer')          AS cancelled_by_customer,
    SUM(booking_status = 'Cancelled by Driver')            AS cancelled_by_driver,
    SUM(booking_status = 'No Driver Found')                AS no_driver_found,
    SUM(booking_status = 'Incomplete')                     AS incomplete_rides,
    ROUND(SUM(booking_status LIKE 'Cancelled%') * 100.0 / COUNT(*), 2) AS cancellation_rate_pct,
    SUM(CASE WHEN booking_status = 'Completed' THEN booking_value END) AS revenue,
    ROUND(AVG(ride_distance), 2)                           AS avg_ride_distance,
    ROUND(AVG(driver_rating), 2)                           AS avg_driver_rating,
    ROUND(AVG(customer_rating), 2)                         AS avg_customer_rating
FROM uber_db.uber_rides;




SELECT vehicle_type,
       COUNT(*) AS total_bookings,
       SUM(booking_status = 'Completed') AS completed_rides,
       SUM(CASE WHEN booking_status = 'Completed' THEN booking_value END) AS revenue
FROM uber_db.uber_rides
GROUP BY vehicle_type
ORDER BY revenue DESC;
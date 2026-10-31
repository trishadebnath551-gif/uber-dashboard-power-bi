SELECT vehicle_type,
       COUNT(*) AS total_bookings,
       SUM(booking_status LIKE 'Cancelled%') AS cancelled,
       ROUND(SUM(booking_status LIKE 'Cancelled%') * 100.0 / COUNT(*), 2) AS cancel_rate_pct
FROM uber_db.uber_rides
GROUP BY vehicle_type
ORDER BY cancel_rSate_pct DESC;
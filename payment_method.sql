SELECT payment_method,
       COUNT(*) AS rides,
       SUM(booking_value) AS revenue
FROM uber_db.uber_rides
WHERE booking_status = 'Completed'
GROUP BY payment_method
ORDER BY revenue DESC;
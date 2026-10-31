SELECT MONTH(booking_date) AS month_no,
       MONTHNAME(booking_date) AS month_name,
       COUNT(*) AS total_bookings,
       SUM(booking_status = 'Completed') AS completed_rides,
       SUM(CASE WHEN booking_status = 'Completed' THEN booking_value END) AS revenue
FROM uber_db.uber_rides
GROUP BY MONTH(booking_date), MONTHNAME(booking_date)
ORDER BY month_no;
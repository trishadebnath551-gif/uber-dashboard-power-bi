SELECT COUNT(*) AS total_rows,
       SUM(booking_value IS NULL) AS blank_booking_values
FROM uber_db.uber_rides;
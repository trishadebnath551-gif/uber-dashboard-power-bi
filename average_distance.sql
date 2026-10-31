SELECT ROUND(AVG(ride_distance), 2) AS avg_distance_completed
FROM uber_db.uber_rides
WHERE booking_status = 'Completed';
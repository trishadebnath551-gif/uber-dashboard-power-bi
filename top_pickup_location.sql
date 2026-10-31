SELECT pickup_location, COUNT(*) AS bookings
FROM uber_db.uber_rides
GROUP BY pickup_location
ORDER BY bookings DESC
LIMIT 10;
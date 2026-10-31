SELECT driver_cancel_reason AS reason, COUNT(*) AS cancellations
FROM uber_db.uber_rides
WHERE booking_status = 'Cancelled by Driver'
GROUP BY driver_cancel_reason
ORDER BY cancellations DESC;
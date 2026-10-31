SELECT customer_cancel_reason AS reason, COUNT(*) AS cancellations
FROM uber_db.uber_rides
WHERE booking_status = 'Cancelled by Customer'
GROUP BY customer_cancel_reason
ORDER BY cancellations DESC;
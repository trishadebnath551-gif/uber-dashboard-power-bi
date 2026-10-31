CREATE DATABASE IF NOT EXISTS uber_db;
USE uber_db;
CREATE TABLE IF NOT EXISTS uber_rides (
    booking_date DATE, booking_time TIME, booking_id VARCHAR(20),
    booking_status VARCHAR(30), customer_id VARCHAR(20), vehicle_type VARCHAR(30),
    pickup_location VARCHAR(100), drop_location VARCHAR(100),
    cancelled_by_customer TINYINT, customer_cancel_reason VARCHAR(100),
    cancelled_by_driver TINYINT, driver_cancel_reason VARCHAR(100),
    incomplete_rides TINYINT, incomplete_reason VARCHAR(100),
    booking_value DECIMAL(10,2), ride_distance DECIMAL(8,2),
    driver_rating DECIMAL(3,1), customer_rating DECIMAL(3,1),
    payment_method VARCHAR(30)
);
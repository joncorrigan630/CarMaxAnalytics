CREATE DATABASE carmax; 
USE carmax; 

CREATE TABLE carmax (
	insert_num INT NOT NULL PRIMARY KEY, 
    purchase_make VARCHAR(25), 
    purchase_model VARCHAR(25), 
    purchase_vehicle_year YEAR, 
    purchase_price VARCHAR(25), 
    trade_in TINYINT, 
    vehicle_financing TINYINT,
    customer_age VARCHAR(25), 
    customer_income VARCHAR(25), 
    customer_gender VARCHAR(5), 
    customer_previous_purchase TINYINT, 
    customer_distance_to_dealer VARCHAR(5), 
    post_purchase_satisfaction VARCHAR(5), 
    vehicle_warranty_used TINYINT, 
    subsequent_purchases INT
);

CREATE TABLE purchases AS 
	SELECT insert_num AS purchase_id, 
    purchase_make, purchase_model, purchase_vehicle_year, purchase_price, 
    trade_in, vehicle_financing, vehicle_warranty_used
FROM carmax; 

CREATE TABLE customers AS 
	SELECT insert_num AS customer_id,
    customer_age, customer_income, customer_gender, 
    customer_previous_purchase, customer_distance_to_dealer, 
    post_purchase_satisfaction, subsequent_purchases
FROM carmax; 
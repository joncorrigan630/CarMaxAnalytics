CREATE DATABASE carmax; 
USE carmax; 

CREATE TABLE carmax_main (
	insert_num INT NOT NULL, 
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
    subsequent_purchases INT,
    PRIMARY KEY(insert_num)
);
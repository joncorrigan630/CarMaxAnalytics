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

CREATE TABLE purchase_info AS
    SELECT insert_num AS purchase_id, 
    purchase_price, trade_in, vehicle_financing, vehicle_warranty_used,
    customer_previous_purchase AS previous_purchase, 
    subsequent_purchases 
FROM carmax_main; 

ALTER TABLE purchase_info 
ADD PRIMARY KEY (purchase_id); 

CREATE TABLE vehicle_info AS
    SELECT insert_num AS vehicle_id, 
    purchase_make AS vehicle_make, 
    purchase_model AS vehicle_model, 
    purchase_vehicle_year AS vehicle_year
FROM carmax_main; 

ALTER TABLE vehicle_info 
ADD PRIMARY KEY (vehicle_id); 

CREATE TABLE customer_info AS 
    SELECT insert_num AS customer_id, 
    customer_age, customer_income, customer_gender, 
    customer_distance_to_dealer, 
    post_purchase_satisfaction AS customer_satisfaction
FROM carmax_main; 

ALTER TABLE customer_info 
ADD PRIMARY KEY (customer_id); 

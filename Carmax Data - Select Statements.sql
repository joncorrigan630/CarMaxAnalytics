SELECT 
	ROUND(AVG(purchase_price),0) AS avg_purchase_price_all,
	ROUND(AVG(purchase_vehicle_year),0) AS avg_vehicle_year_all,
    ROUND(AVG(customer_age),0) AS avg_customer_age_all, 
    ROUND(AVG(customer_income),0) AS avg_customer_income_all,
    ROUND(AVG(customer_distance_to_dealer),0) AS avg_dist_to_dealer_all
FROM carmax; 

SELECT 
	customer_gender AS gender, 
	COUNT(customer_gender) AS gender_total, 
	SUM(subsequent_purchases) AS subsequent_purchases_total,
    SUM(customer_previous_purchase) AS previous_purchases_total,
    SUM(vehicle_warranty_used) AS vehicles_under_warranty_total,
    SUM(vehicle_financing) AS vehicles_financed_total, 
    SUM(trade_in) AS vehicle_trade_in_total
FROM carmax
GROUP BY customer_gender
ORDER BY gender_total DESC; 

SELECT 
	customer_gender AS gender, 
	COUNT(customer_gender) AS gender_total, 
    ROUND(AVG(customer_distance_to_dealer),0) AS avg_distance_to_dealer,
	ROUND(AVG(customer_age),0) AS avg_customer_age, 
    ROUND(AVG(customer_income),0) AS avg_customer_income, 
    ROUND(AVG(purchase_price),0) AS avg_purchase_price, 
    ROUND(AVG(purchase_vehicle_year),0) AS avg_vehicle_year
FROM carmax
GROUP BY customer_gender
ORDER BY gender_total DESC; 

SELECT
	customer_gender AS gender, 
	COUNT(customer_gender) AS total_by_gender,
    ROUND(AVG(customer_income),0) AS avg_customer_income,
	purchase_make AS vehicle_make, 
	ROUND(AVG(purchase_price),0) AS avg_purchase_price
FROM carmax
GROUP BY purchase_make, customer_gender
ORDER BY vehicle_make DESC, total_by_gender DESC;    

SELECT 
	purchase_make AS vehicle_make, 
    COUNT(purchase_make) AS total_by_make, 
	ROUND(AVG(purchase_price),0) AS avg_purchase_price, 
	ROUND(AVG(purchase_vehicle_year),0) AS avg_vehicle_year, 
    MIN(purchase_vehicle_year) AS oldest_vehicle_year, 
    MAX(purchase_vehicle_year) AS newest_vehicle_year,
    ROUND(AVG(customer_age),0) AS avg_customer_age, 
    ROUND(AVG(customer_income),0) AS avg_customer_income
FROM carmax
GROUP BY purchase_make
ORDER BY total_by_make DESC; 

SELECT 
	purchase_make, purchase_model, purchase_vehicle_year, 
    COUNT(purchase_make) AS total_vehicles_sold,
	ROUND(AVG(purchase_price),0) AS avg_purchase_price
FROM carmax 
GROUP BY purchase_make, purchase_model, purchase_vehicle_year;

SELECT 
	purchase_make, purchase_model, purchase_vehicle_year, 
    COUNT(purchase_make) AS total_vehicles_sold,
	ROUND(AVG(customer_age),0) AS avg_customer_age
FROM carmax 
GROUP BY purchase_make, purchase_model, purchase_vehicle_year;

SELECT 
	purchase_make, purchase_model, purchase_vehicle_year, 
    COUNT(purchase_make) AS total_vehicles_sold,
	ROUND(AVG(customer_income),0) AS avg_customer_income
FROM carmax 
GROUP BY purchase_make, purchase_model, purchase_vehicle_year;
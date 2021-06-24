CREATE VIEW purchases AS
SELECT purchase_price AS purchase_price_bins,
	   AVG(purchase_price) + 4999/2 AS purchase_price_midrange, 
       COUNT(purchase_price) AS purchase_price_count, 
       SUM(trade_in) AS trade_in_vehicles, 
       SUM(vehicle_financing) AS vehicles_financed, 
       SUM(vehicle_warranty_used) AS vehicles_under_warranty, 
       SUM(customer_previous_purchase) AS previous_purchases, 
       SUM(subsequent_purchases) AS subsequent_purchases
FROM carmax_main
WHERE purchase_price != '?' AND purchase_price IS NOT NULL
GROUP BY purchase_price
ORDER BY purchase_price DESC; 

CREATE VIEW vehicles AS
SELECT COUNT(insert_num) AS total_vehicles_sold, 
	   AVG(purchase_price) + 4999/2 AS average_purchase_price,
	   purchase_make AS vehicle_make, purchase_model AS vehicle_model, 
       purchase_vehicle_year AS vehicle_year
FROM carmax_main 
GROUP BY purchase_make, purchase_model, purchase_vehicle_year
ORDER BY purchase_make DESC, total_vehicles_sold DESC; 

CREATE VIEW customers AS
SELECT COUNT(insert_num) AS total_purchases, 
	   AVG(purchase_price) + 4999/2 AS average_purchase_price,
       AVG(customer_income) AS average_customer_income,
       customer_gender
FROM carmax_main 
GROUP BY customer_gender
ORDER BY total_purchases DESC; 
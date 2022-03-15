-- indicate the number of customers grouped by age who purchased a vehicle at a price exceeding annual income
SELECT 
	customer_age,
	COUNT(customer_age) AS total_by_customer_age,
	ROUND(AVG(customer_income),0) AS avg_customer_income, 
	ROUND(AVG(purchase_price),0) AS avg_purchase_price, 
		CASE WHEN AVG(customer_income) > AVG(purchase_price) THEN 'annual income'
		WHEN AVG(customer_income) < AVG(purchase_price) THEN 'vehicle price'
		END AS 'annual_income vs vehicle_price'
FROM carmax
GROUP BY customer_age
ORDER BY customer_age DESC;

-- indicate the percentage of customers grouped by age who purchased a top five vehicle at a price exceeding annual income 
SELECT 
	customer_age AS avg_customer_age,
	COUNT(customer_age) AS total_by_customer_age,
		ROUND(AVG(CASE WHEN purchase_make = 'CHEVROLET' AND purchase_price > customer_income THEN 1
		WHEN purchase_make = 'CHEVROLET' AND purchase_price < customer_income THEN 0 
	END),2) AS perc_price_over_income_chevy, 
		ROUND(AVG(CASE WHEN purchase_make = 'FORD' AND purchase_price > customer_income THEN 1
		WHEN purchase_make = 'FORD' AND purchase_price < customer_income THEN 0 
	END),2) AS perc_price_over_income_ford,
		ROUND(AVG(CASE WHEN purchase_make = 'TOYOTA' AND purchase_price > customer_income THEN 1
		WHEN purchase_make = 'TOYOTA' AND purchase_price < customer_income THEN 0 
	END),2) AS perc_price_over_income_toyota,
		ROUND(AVG(CASE WHEN purchase_make = 'NISSAN' AND purchase_price > customer_income THEN 1
		WHEN purchase_make = 'NISSAN' AND purchase_price < customer_income THEN 0 
	END),2) AS perc_price_over_income_nissan,
		ROUND(AVG(CASE WHEN purchase_make = 'HONDA' AND purchase_price > customer_income THEN 1
		WHEN purchase_make = 'HONDA' AND purchase_price < customer_income THEN 0 
	END),2) AS perc_price_over_income_honda
FROM carmax
GROUP BY customer_age
ORDER BY customer_age DESC; 
-- Find the total number of customers by country

SELECT 
	country,
	COUNT(DISTINCT customer_key) AS total_customers
FROM gold.dim_customers
GROUP BY country
ORDER BY COUNT(DISTINCT customer_key) DESC;

-- Find total cuatomers by gender

SELECT 
	gender,
	COUNT(DISTINCT customer_key) AS total_customers
FROM gold.dim_customers
GROUP BY gender
ORDER BY COUNT(DISTINCT customer_key) DESC;

-- Find total products by category

SELECT 
	category,
	COUNT(DISTINCT product_key) AS total_products
FROM gold.dim_products
GROUP BY category
ORDER BY COUNT(DISTINCT product_key) DESC;

-- What is the average costs in each category?

SELECT 
	category,
	AVG(cost) AS average_price
FROM gold.dim_products
GROUP BY category
ORDER BY AVG(cost) DESC;

-- What is the total revenue generated for each category?

SELECT 
	p.category,
	SUM(f.sales_amount) AS total_reveneu
FROM gold.fact_sales f
LEFT JOIN gold.dim_products p
	ON p.product_key = f.product_key
GROUP BY category
ORDER BY SUM(sales_amount) DESC;

-- Find total revenue genereted by each cuatoemr

SELECT 
	c.customer_key,
	c.first_name,
	c.last_name,
	SUM(f.sales_amount) AS total_reveneu
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
	ON c.customer_key = f.customer_key
GROUP BY 
	c.customer_key,
	c.first_name,
	c.last_name
ORDER BY total_reveneu DESC;

-- What is the distribution of items sold across countires

SELECT 
	c.country,
	SUM ( f.quantity) AS sold_items
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
	ON c.customer_key = f.customer_key
GROUP BY 
	c.country
ORDER BY sold_items DESC;
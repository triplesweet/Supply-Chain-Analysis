-- Stock Levels by category
SELECT
	product,
	gender,
	count(*) AS total_types,
	sum(stock_levels) AS total_stock,
	sum(orders) AS total_orders,
	sum(sales) AS total_sales,
	sum(availability) AS total_availability
FROM
	supply_chain
GROUP BY
	product,
	gender
ORDER BY
	product,
	gender DESC;

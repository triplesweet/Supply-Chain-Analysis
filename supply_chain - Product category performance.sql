-- Product Category performance 

SELECT
	product,
	COUNT(*) AS row_count,
	ROUND(AVG(price)::numeric, 2) AS average_price,
	TO_CHAR(AVG(rev_gen), 'FM9999999.00') AS average_revenue
FROM
	supply_chain
GROUP BY
	product
ORDER BY
	average_revenue DESC;
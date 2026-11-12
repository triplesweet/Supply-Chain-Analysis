
-- Product Segmentation Comparison

SELECT 
	COUNT(*) AS record_count,
	product,
	gender,
	ROUND(AVG(price)::numeric, 2) AS average_price, 
	ROUND(AVG(rev_gen)::numeric, 2) AS average_revenue,
	ROUND(AVG(sales)::numeric, 0) AS average_sales
	FROM supply_chain
GROUP BY  product, gender
ORDER BY product, gender DESC;

-- An overview diagram for product performance across warehouses grouped by product and gender. 
-- Record count acts as a representative of how many warehouses or SKU are present per row. 
-- Used for comparing price, revenue and sales per product categorywith segmentation in mind.


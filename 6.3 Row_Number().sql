# ROW_NUMBER


SELECT *
FROM (
SELECT c.customer_id, 
first_name, 
order_total, 
ROW_NUMBER() OVER(PARTITION BY first_name ORDER BY order_total DESC) AS row_num
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
) AS Row_Table
WHERE row_num <= 2
;














































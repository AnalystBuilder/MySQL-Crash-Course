# Joining on Multiple Tables

SELECT product_name, order_total, first_name
FROM products p 
JOIN customer_orders co
	ON p.product_id = co.product_id
JOIN customers c
	ON co.customer_id = c.customer_id
;


SELECT p.product_id, co.product_id, co.customer_id, c.customer_id
FROM products p 
JOIN customer_orders co
	ON p.product_id = co.product_id
JOIN customers c
	ON co.customer_id = c.customer_id
;










































# Practice Question
# Given these 3 tables (suppliers, ordered_items, customer_orders), write a query to return
# the name of the supplier and the sum of the total order amount for each supplier

SELECT name, SUM(order_total)
FROM suppliers s
JOIN ordered_items oi
	ON s.supplier_id = oi.shipper_id
JOIN customer_orders co
	ON oi.order_id = co.order_id
GROUP BY name
;






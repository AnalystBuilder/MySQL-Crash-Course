# Cross Joins

SELECT c.customer_id, first_name, order_id, co.customer_id
FROM customers c
CROSS JOIN customer_orders co
ORDER BY c.customer_id, order_id ;


























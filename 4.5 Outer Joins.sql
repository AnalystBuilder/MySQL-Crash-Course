# Outer Joins

SELECT *
FROM customers c
LEFT OUTER JOIN customer_orders co
	ON c.customer_id = co.customer_id
ORDER BY c.customer_id
;


SELECT *
FROM customers c
RIGHT OUTER JOIN customer_orders co
	ON c.customer_id = co.customer_id
ORDER BY c.customer_id
;



































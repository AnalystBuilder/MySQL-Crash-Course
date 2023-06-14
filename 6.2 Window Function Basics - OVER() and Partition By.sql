# OVER() and Partition By

SELECT c.customer_id, first_name, order_total, MAX(order_total)
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
GROUP BY c.customer_id, first_name, order_total
;

SELECT c.customer_id, 
first_name, 
order_total, 
AVG(order_total) OVER(PARTITION BY first_name ORDER BY first_name)
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
;














































# Practice Question
# Given the customer orders table, provide a rolling SUM of purchases each customer has made,
# from smallest to largest purchase.
# Give the customer ID, order total, and rolling order total called "Rolling_Total"

SELECT customer_id, 
order_total,
SUM(order_total) OVER(PARTITION BY customer_id ORDER BY order_total) AS Rolling_Total
FROM customer_orders;






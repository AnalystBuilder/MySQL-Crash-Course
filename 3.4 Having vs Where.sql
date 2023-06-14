# HAVING vs WHERE


SELECT customer_id, SUM(tip) AS total_tips
FROM customer_orders
WHERE total_tips > 5
GROUP BY customer_id
;


SELECT customer_id, SUM(tip) AS total_tips
FROM customer_orders
GROUP BY customer_id
HAVING total_tips > 5
;










































# Practice Question
# Using the customer orders table, write a query to show the products that had 2 or more orders

SELECT product_id, COUNT(order_id) as orders
FROM customer_orders
GROUP BY product_id
HAVING orders > 1
;

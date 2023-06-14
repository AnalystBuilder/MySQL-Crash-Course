# Subqueries in SELECT and FROM


SELECT product_id, quantity, (SELECT AVG(quantity) FROM ordered_items)
FROM ordered_items;


SELECT product_id, 
quantity, 
(SELECT SUM(quantity) FROM ordered_items) AS Sum_of_total,
(quantity/(SELECT SUM(quantity) FROM ordered_items)*100) AS Percentage_of_all_orders
FROM ordered_items;


SELECT new_column
FROM (SELECT product_id, 
	quantity, 
	(SELECT AVG(quantity) FROM ordered_items) AS new_column
	FROM ordered_items) AS avg_quantity
    ;


















































# Practice Question
# Given the customer_orders table, Use a subquery to determine the customers who have made
# made a purchase that was higher than the average total purchase of all the orders.
# Have the customer ID, order_total, and the average of order totals in your output. 

SELECT customer_id, order_total, (SELECT AVG(order_total) FROM customer_orders)
FROM customer_orders
WHERE order_total > (SELECT AVG(order_total) FROM customer_orders);




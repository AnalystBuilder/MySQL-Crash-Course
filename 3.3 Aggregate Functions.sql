# Aggregate Functions

SELECT customer_id, SUM(order_total)
FROM customer_orders
GROUP BY customer_id
;


SELECT customer_id, AVG(order_total)
FROM customer_orders
GROUP BY customer_id
;

SELECT customer_id, 
MAX(order_total), 
MIN(order_total)
FROM customer_orders
GROUP BY customer_id
;


SELECT customer_id, COUNT(order_total)
FROM customer_orders
GROUP BY customer_id
;


SELECT first_name, COUNT(phone)
FROM customers
GROUP BY first_name
;


SELECT product_id, COUNT(tip), COUNT(DISTINCT tip)
FROM customer_orders
GROUP BY product_id
;




























# Practice Question
# Using the employee table, write a query to show the average salary and the max salary in
# each department

SELECT department, AVG(salary), MAX(salary)
FROM employees
GROUP BY department
;
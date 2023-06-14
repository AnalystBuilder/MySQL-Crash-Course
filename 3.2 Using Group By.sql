# Using Group By


SELECT customer_id,COUNT(tip)  AS count_tips ,SUM(tip) AS total_tip
FROM customer_orders
GROUP BY customer_id
ORDER BY total_tip DESC
;
















# Practice Question
# Using the employees table, write a query to show the average salary for each department

SELECT department, AVG(salary)
FROM employees
GROUP BY department
;


























# Subqueries


SELECT *
FROM customers
WHERE customer_id IN 
	(SELECT DISTINCT customer_id
    FROM customer_orders
    WHERE tip > 2)
;
SELECT * 
    FROM customer_orders;





SELECT *
FROM customers
WHERE total_money_spent > (SELECT AVG(total_money_spent) FROM customers)
;



























# Practice Question
# Using customers, customers orders, and products table - write a subquery to return
# the first name and last name of customers who ordered something with chocolate in it.

SELECT DISTINCT first_name, last_name
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
WHERE product_id IN
	(SELECT product_id
    FROM products
    WHERE product_name LIKE 'Chocolate%'
    );

SELECT *
FROM products;





# Practice Question
# Using the employees table, use a subquery to select the 2nd highest paid employee

SELECT *
FROM employees
WHERE Salary NOT IN
	(SELECT MAX(Salary)
    FROM employees
    )
ORDER BY salary DESC
LIMIT 1;


SELECT *
FROM employees
WHERE Salary NOT IN
	(SELECT employee_id
    FROM employees
    ORDER BY salary DESC
    LIMIT 1
    )
ORDER BY salary DESC
LIMIT 1;





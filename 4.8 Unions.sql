# Unions

SELECT first_name, last_name
FROM customers
UNION
SELECT product_id, product_name
FROM products;



SELECT customer_id, first_name, 'OLD' Label
FROM customers
WHERE birth_date < '1950-01-01'
UNION
SELECT c.customer_id, first_name, 'Good Tipper'
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
WHERE tip > 4;


SELECT customer_id, first_name, 'OLD' Label
FROM customers
WHERE birth_date < '1950-01-01'
UNION ALL
SELECT customer_id, first_name, 'OLD' Label
FROM customers
WHERE birth_date < '1950-01-01'











































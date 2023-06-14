# SQL Basics



SELECT *
FROM customers;



SELECT *
FROM customers
WHERE first_name = 'Frodo'
;


SELECT *
FROM customers
WHERE customer_id = 100104
;



SELECT *
FROM customers
WHERE birth_date > '1995-01-01'
ORDER BY total_money_spent DESC
;

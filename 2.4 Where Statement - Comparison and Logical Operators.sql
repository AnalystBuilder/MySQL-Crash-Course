# Where Statement



SELECT *
FROM customers
WHERE first_name = 'Kevin'
;

SELECT *
FROM customers
WHERE first_name <> 'Kevin'
;


SELECT *
FROM customers
WHERE total_money_spent >= 1009
;


SELECT *
FROM customers
WHERE total_money_spent <= 1009
;

# AND, OR, NOT

SELECT *
FROM customers
WHERE total_money_spent <= 1009 AND state = 'TX'
;

SELECT *
FROM customers
WHERE total_money_spent <= 1009 OR state = 'TX'
;




SELECT *
FROM customers
WHERE (birth_date < '1995-01-01' OR state = 'PA') AND state = 'NY'
;


SELECT *
FROM customers
WHERE  first_name != 'Frodo'
;






































# Practice Question
# Using the employees table, write a query to show the employee ID, first and last name, and salary
# of employees that make more that 45k in the bakery department

SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary > '45000' AND department = 'bakery'
;


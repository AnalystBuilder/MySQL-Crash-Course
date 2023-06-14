# LIKE Operator

# %, _
SELECT *
FROM customers
WHERE first_name LIKE 'k%n'
;


SELECT *
FROM customers
WHERE first_name LIKE '%k%'
;


SELECT *
FROM customers
WHERE first_name LIKE 'm______'
;



SELECT *
FROM customers
WHERE first_name LIKE 'D_'
;


SELECT *
FROM customers
WHERE last_name LIKE 's_____%'
;


SELECT *
FROM customers
WHERE phone LIKE '9%'
;













































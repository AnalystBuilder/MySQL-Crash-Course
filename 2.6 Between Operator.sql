# Between Operator

SELECT *
FROM customers
WHERE total_money_spent BETWEEN 534 AND 1009
;


SELECT *
FROM customers
WHERE total_money_spent >= 534 AND total_money_spent <= 1009
;


SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2020-01-01'
;


SELECT *
FROM customers
WHERE first_name BETWEEN 'Charles' AND 'Obi'
;













































# Practice Question
# Using the products table, select the name of the product where the sale price is
# between $1.25 and $3. 

SELECT product_name
FROM products
WHERE sale_price BETWEEN 1.25 AND 3
;






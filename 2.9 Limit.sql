# LIMIT


SELECT *
FROM customers
WHERE total_money_spent < 8000
ORDER BY total_money_spent DESC
LIMIT 5
;


SELECT *
FROM customers
WHERE total_money_spent < 8000
ORDER BY total_money_spent DESC
LIMIT 3,2
;





























# Practice Question
# Using the customers table, write a query to show the top 2 customers by money spent

SELECT *
FROM customers
ORDER BY total_money_spent DESC
LIMIT 2;









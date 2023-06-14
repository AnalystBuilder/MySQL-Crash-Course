# CASE Statements


SELECT *,
CASE 
	WHEN units_in_stock < 20 THEN 'ORDER MORE NOW!!'
    WHEN units_in_stock > 50 THEN 'Check back on Friday.'
    WHEN units_in_stock > 100 THEN 'All good my friend'
END AS Label
FROM products
;


































# Practice Question
# Using the table customer_orders, if a customer tipped 2 dollars or more give them a 10% discount. Make this a new column called "discounted total" to compare to the original order amount.

SELECT *,
CASE
	WHEN tip >= 2 THEN order_total * .9
END AS 'discounted total'
FROM customer_orders;







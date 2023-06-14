# Self Joins

# Use Case/Practice Question

# In the customer table, the person with the next highest Customer ID is the that person's boss.
# Write a query to return the first and last name of both the employee and their boss

SELECT c. customer_id, 
c.first_name, 
c.last_name, 
ss.customer_id  boss_id, 
ss.first_name boss_first_name, 
ss.last_name boss_last_name
FROM customers c
JOIN customers ss
	ON c.customer_id = ss.customer_id - 1
;






















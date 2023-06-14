# Inner Joins

SELECT *
FROM customers;

SELECT *
FROM customer_orders;


SELECT *
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
ORDER BY co.customer_id
;


SELECT *
FROM products;

SELECT *
FROM customer_orders;

# product name, product id, order_total
SELECT product_name, p.product_id, SUM(order_total)
FROM products p 
INNER JOIN customer_orders co
	ON p.product_id = co.product_id
GROUP BY product_name, p.product_id
;


SELECT *
FROM suppliers;

SELECT *
FROM ordered_items;


SELECT *
FROM suppliers s 
JOIN ordered_items oi
	ON s.supplier_id = oi.shipper_id
;


















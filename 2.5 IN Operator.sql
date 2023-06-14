# IN Operator


SELECT *
FROM customers
WHERE state IN ('PA','TX','CA')
;


SELECT *
FROM customers
WHERE state = 'PA' OR state = 'TX' OR state = 'CA'
;


SELECT *
FROM customers
WHERE first_name IN ('Kevin','Kelly')
;
































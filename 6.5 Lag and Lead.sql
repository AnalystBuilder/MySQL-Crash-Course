# Lag and Lead

SELECT *,
LAG(salary) OVER(PARTITION BY department ORDER BY salary) lags,
LEAD(salary) OVER(PARTITION BY department ORDER BY salary) leads
FROM employees
;

SELECT *,
CASE
	WHEN salary < lags THEN 'Less'
    WHEN salary = lags THEN 'Equal'
    ELSE 'More'
END AS label
FROM (
	SELECT *,
	LAG(salary) OVER(PARTITION BY department ORDER BY employee_id) lags
	FROM employees
	) AS temp_table
;


































# Rank and Dense_Rank


SELECT *
FROM (SELECT *,
RANK() OVER(PARTITION BY department ORDER BY salary)AS Rank_col,
DENSE_RANK() OVER(PARTITION BY department ORDER BY salary)AS Dense_Rank_col,
ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary)AS row_number_col
FROM employees
) random_table
WHERE Rank_col = 3 ;






































-- FIRST_VALUE() - zwraca pierwszą wartość w bieżącym oknie
-- FIRST_VALUE (value_expression [{RESPECT | IGNORE} NULLS])
SELECT * FROM functions.tips;
SELECT 
  *,
  FIRST_VALUE(total_bill) OVER (ORDER BY total_bill) AS first_val
FROM 
  functions.tips;
  
SELECT 
  *,
  FIRST_VALUE(total_bill) OVER (PARTITION BY day ORDER BY total_bill) AS first_val
FROM 
  functions.tips;  

-- LAST_VALUE() - zwraca ostatnią wartość w bieżącym oknie
-- LAST_VALUE (value_expression [{RESPECT | IGNORE} NULLS])
SELECT 
  *,
  LAST_VALUE(total_bill) OVER (ORDER BY total_bill) AS last_val,
  LAST_VALUE(total_bill) OVER (ORDER BY total_bill ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS last_val_,
  LAST_VALUE(total_bill) OVER (PARTITION BY day ORDER BY total_bill ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS last_val__
FROM 
  functions.tips;

-- NTH_VALUE() - zwrata n-tą wartość w bieżącym oknie
-- NTH_VALUE (value_expression, constant_integer_expression [{RESPECT | IGNORE} NULLS])
SELECT 
  *,
  NTH_VALUE(total_bill, 1) OVER (ORDER BY total_bill) AS n_val_1,
  NTH_VALUE(total_bill, 2) OVER (ORDER BY total_bill) AS n_val_2,
  NTH_VALUE(total_bill, 3) OVER (ORDER BY total_bill) AS n_val_3
FROM 
  functions.tips;

-- LAG() - zwraca wartość poprzedniego wiersza
-- LAG (value_expression[, offset [, default_expression]])
SELECT 
  *,
  LAG(total_bill) OVER (ORDER BY total_bill) AS prev_rows,
  LAG(total_bill, 2) OVER (ORDER BY total_bill) AS prev_rows_2
FROM 
  functions.tips;

SELECT *, LAG(close) OVER (ORDER BY date) AS prev_close FROM DQL.google;

SELECT *, close / prev_close - 1 AS daily_change FROM
(SELECT *, LAG(close) OVER (ORDER BY date) AS prev_close FROM DQL.google);

SELECT *, ROUND(close / prev_close - 1, 4) AS daily_change FROM
(SELECT *, LAG(close) OVER (ORDER BY date) AS prev_close FROM DQL.google);


-- PERCENTILE_CONT() - zwraca konkretną wartość percentyla
-- PERCENTILE_CONT (value_expression, percentile [{RESPECT | IGNORE} NULLS])
SELECT *, 
  PERCENTILE_CONT(close, 0) OVER() as min_close,
  PERCENTILE_CONT(close, 0.25) OVER() as perc25,
  PERCENTILE_CONT(close, 0.5) OVER() as median,
  PERCENTILE_CONT(close, 0.75) OVER() as perc75,
  PERCENTILE_CONT(close, 1) OVER() as max_close
FROM DQL.google;


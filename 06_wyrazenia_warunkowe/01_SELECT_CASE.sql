-- Wyrażenia warunkowe
  
-- CASE expression
--   WHEN value THEN result
--   [WHEN ...]
--   [ELSE else_result]
-- END
  
SELECT AVG(total_bill) AS avg_total_bill FROM functions.tips;

SELECT 
  *,
  CASE 
    WHEN total_bill > 19.8 THEN 'big'
    ELSE 'small'
  END AS bill_cat
FROM 
  functions.tips;
  
SELECT 
  *,
  CASE 
    WHEN total_bill > 19.8 THEN 'big'
    ELSE 'small'
  END AS bill_cat,
  CASE
    WHEN tip < 1.0 THEN 'very small'
    WHEN tip < 2.0 THEN 'small'
    WHEN tip < 3.0 THEN 'medium'
    ELSE 'high'
  END AS tip_cat
FROM 
  functions.tips;  
  
SELECT 
  *,
  CASE 
    WHEN total_bill > 19.8 THEN 'big'
    ELSE 'small'
  END AS bill_cat,
  CASE
    WHEN tip < 1.0 THEN 'very small'
    WHEN tip < 2.0 THEN 'small'
    WHEN tip < 3.0 THEN 'medium'
    ELSE 'high'
  END AS tip_cat,
  CASE 
    WHEN day IN ('Sat', 'Sun') THEN 'weekend'
    ELSE 'working day'
  END AS time_cat
FROM 
  functions.tips; 

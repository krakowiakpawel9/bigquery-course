-- IF(condition, true_result, false_result)
SELECT * FROM functions.tips;

SELECT
  *,
  IF(day = 'Sun', 'Sunday', null) AS sunday_flag
FROM 
  functions.tips;
  
SELECT
  *,
  IF(size < 3, 'small', 'big') AS size_flag
FROM 
  functions.tips;
  
SELECT
  *,
  tip / total_bill AS share,
  IF(tip / total_bill > 0.25, 'big', 'small') AS tip_share
FROM 
  functions.tips
ORDER BY 
  share DESC;

SELECT 
  *,
  RANK() OVER (ORDER BY rating) AS ranking
FROM 
  `bigquery-course-257019.functions.movies`;
  
SELECT 
  *,
  RANK() OVER (ORDER BY rating DESC) AS ranking
FROM 
  `bigquery-course-257019.functions.movies`;  
  
SELECT 
  *,
  RANK() OVER (ORDER BY rating DESC) AS ranking,
  DENSE_RANK() OVER (ORDER BY rating DESC) AS dense_ranking
FROM 
  `bigquery-course-257019.functions.movies`;   
  
SELECT 
  *,
  RANK() OVER (ORDER BY rating DESC) AS ranking,
  DENSE_RANK() OVER (ORDER BY rating DESC) AS dense_ranking,
  PERCENT_RANK() OVER (ORDER BY rating DESC) AS percent_ranking,
  RANK() OVER (ORDER BY movie_name) AS movie_name_ranking
FROM 
  `bigquery-course-257019.functions.movies`;   
  
  

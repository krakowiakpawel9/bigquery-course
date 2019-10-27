SELECT
  *
FROM
  DQL.bike
LIMIT
  5;
  
  -- SUM, MIN, MAX, AVG
SELECT
  SUM(duration) AS total_duration,
  MIN(duration) AS min_duration,
  MAX(duration) AS max_duration,
  AVG(duration) AS avg_duration
FROM
  DQL.bike;
  
  -- SUM, MIN, MAX, AVG
SELECT
  SUM(duration / 60) AS total_duration,
  MIN(duration / 60) AS min_duration,
  MAX(duration / 60) AS max_duration,
  AVG(duration / 60) AS avg_duration
FROM
  DQL.bike; 
  
  -- SUM, MIN, MAX, AVG
SELECT
  EXTRACT(MONTH FROM start_date) AS month,
  COUNT(*)
FROM
  DQL.bike
GROUP BY
  month;   
  
  -- SUM, MIN, MAX, AVG
SELECT
  EXTRACT(MONTH FROM start_date) AS month,
  SUM(duration / 60) AS total_duration,
  MIN(duration / 60) AS min_duration,
  MAX(duration / 60) AS max_duration,
  AVG(duration / 60) AS avg_duration,
  COUNT(duration) AS count_duration
FROM
  DQL.bike
GROUP BY
  month
ORDER BY 
  month;
  
  -- SUM, MIN, MAX, AVG
SELECT
  EXTRACT(YEAR FROM start_date) AS year,
  SUM(duration / 60) AS total_duration,
  MIN(duration / 60) AS min_duration,
  MAX(duration / 60) AS max_duration,
  AVG(duration / 60) AS avg_duration,
  COUNT(duration) AS count_duration
FROM
  DQL.bike
GROUP BY
  year
ORDER BY 
  year;  
  
  
  -- SUM, MIN, MAX, AVG
SELECT
  EXTRACT(YEAR FROM start_date) AS year,
  EXTRACT(MONTH FROM start_date) AS month,
  SUM(duration / 60) AS total_duration,
  MIN(duration / 60) AS min_duration,
  MAX(duration / 60) AS max_duration,
  AVG(duration / 60) AS avg_duration,
  COUNT(duration) AS count_duration
FROM
  DQL.bike
GROUP BY
  year, month
ORDER BY 
  year, month; 
  
  -- SUM, MIN, MAX, AVG
SELECT
  EXTRACT(YEAR FROM start_date) AS year,
  EXTRACT(MONTH FROM start_date) AS month,
  SUM(duration / 60) AS total_duration,
  MIN(duration / 60) AS min_duration,
  MAX(duration / 60) AS max_duration,
  AVG(duration / 60) AS avg_duration,
  COUNT(duration) AS total_number_of_rental
FROM
  DQL.bike
GROUP BY
  year, month
HAVING
  total_number_of_rental >= 40
ORDER BY 
  year, month; 
  

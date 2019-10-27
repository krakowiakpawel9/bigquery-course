SELECT bike_id, duration FROM 
(SELECT rental_id, bike_id, duration FROM `bigquery-public-data.london_bicycles.cycle_hire` LIMIT 1000);

SELECT 
  AVG(duration) AS avg_duration, 
  MAX(duration) AS max_duration
FROM 
  (SELECT duration FROM `bigquery-public-data.london_bicycles.cycle_hire` WHERE duration >= 50);
  
SELECT EXTRACT(MONTH FROM start_date) AS month FROM `bigquery-public-data.london_bicycles.cycle_hire`;


SELECT 
  month,
  AVG(duration / 60) AS avg_duration
FROM
  (SELECT 
    EXTRACT(MONTH FROM start_date) AS month, 
    duration 
  FROM 
    `bigquery-public-data.london_bicycles.cycle_hire`)
GROUP BY
  month
ORDER BY 
  month;
  
SELECT 
  avg_duration 
FROM
  (SELECT 
    month,
    AVG(duration / 60) AS avg_duration
  FROM
    (SELECT 
      EXTRACT(MONTH FROM start_date) AS month, 
      duration 
    FROM 
      `bigquery-public-data.london_bicycles.cycle_hire`)
  GROUP BY
    month
  ORDER BY 
    month)
WHERE
  avg_duration > 20;
  

SELECT 
  year,
  month,
  ROUND(AVG(duration), 2) AS avg_duration
FROM
  (SELECT
    EXTRACT(YEAR FROM start_date) AS year,
    EXTRACT(MONTH FROM start_date) AS month,
    duration
  FROM
    `bigquery-public-data.london_bicycles.cycle_hire`)
GROUP BY
  year, month
ORDER BY
  year, month;

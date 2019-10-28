CREATE OR REPLACE TABLE functions.movies (
  id STRING NOT NULL,
  movie_name STRING,
  rating FLOAT64,
  duration FLOAT64,
  is_polish BOOL
);

INSERT INTO functions.movies VALUES ('001', 'Batman', 4.5, 92.0, false);
INSERT INTO functions.movies VALUES ('002', 'Spiderman', 4.75, 90.0, false);
INSERT INTO functions.movies VALUES ('003', 'Django', 4.9, 160.0, false);
INSERT INTO functions.movies VALUES ('004', 'Killer', 4.9, null, false);
INSERT INTO functions.movies VALUES ('005', 'Gladiator', null, 155.0, false);

-- COUNT, MIN, MAX, SUM, AVG
SELECT
  COUNT(*) AS total_count,
  COUNT(rating) AS non_null_rating_count,
  MIN(rating) AS min_rating,
  MAX(rating) AS max_rating,
  SUM(rating) AS sum_rating,
  AVG(rating) AS avg_rating
FROM
  functions.movies;
  
SELECT
  COUNT(*) AS total_count,
  COUNT(rating) AS non_null_rating_count,
  COUNTIF(rating > 4.8) AS rating_count,
  MIN(rating) AS min_rating,
  MAX(rating) AS max_rating,
  SUM(rating) AS sum_rating,
  AVG(rating) AS avg_rating,
  ANY_VALUE(movie_name) AS movie_name
FROM
  functions.movies;  
  
SELECT 
  STRING_AGG(movie_name) 
FROM 
  functions.movies;
  
SELECT 
  STRING_AGG(movie_name, '#') 
FROM 
  functions.movies;  
  
SELECT 
  STRING_AGG(movie_name, '#' ORDER BY movie_name) AS movie_names
FROM 
  functions.movies;    

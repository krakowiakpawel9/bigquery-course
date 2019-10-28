-- Funkcje tekstowe
  
CREATE OR REPLACE TABLE functions.movies (
  id STRING NOT NULL,
  movie_name STRING,
  rating FLOAT64,
  duration FLOAT64,
  is_polish BOOL,
  year_of_production INT64
);

INSERT INTO functions.movies VALUES ('001', 'Batman', 4.5, 92.0, false, 2002);
INSERT INTO functions.movies VALUES ('002', 'Spiderman', 4.75, 90.0, false, 2001);
INSERT INTO functions.movies VALUES ('003', 'Django', 4.9, 160.0, false, 2012);
INSERT INTO functions.movies VALUES ('004', 'Killer', 4.9, null, true, 1997);
INSERT INTO functions.movies VALUES ('005', 'Gladiator', null, 155.0, false, 2000);

-- CHAR_LENGTH(value) - zwraca długosć łańcucha znaków
SELECT CHAR_LENGTH('BigQuery') AS len;
SELECT CHAR_LENGTH('Google Cloud') AS len;
SELECT *, CHAR_LENGTH(movie_name) AS len_movie_name FROM functions.movies;

-- CONCAT(value1[, ...]) - skleja tekst
SELECT CONCAT('Big', 'Query') AS concat_string;
SELECT CONCAT('Google', ' ', 'Cloud') AS concat_string;
SELECT CONCAT('Google ', 'Cloud') AS concat_string;

-- ENDS_WITH(value1, value2) - zwraca TRUE gdy value1 kończy się value2
SELECT ENDS_WITH('BigQuery', 'Query') AS is_end;
SELECT ENDS_WITH('BigQuery', 'query') AS is_end;
SELECT ENDS_WITH('TAB_AVG_MAX_MIN_201901', '201901') AS is_end;
-- STARTS_WITH(value1, value2) - zwraca TRUE gdy value1 zaczyna się value2
SELECT STARTS_WITH('BigQuery', 'Big') AS is_started;
-- LOWER(value) - zwraca wszystkie znaki małą literą
SELECT LOWER('BigQuery') AS lower;
-- UPPER(value) - zwraca wszystkie znaki dużą literą
SELECT UPPER('BigQuery') AS upper;
-- LTRIM(value) - usuwa białe znaki po lewej 
SELECT LTRIM('         BigQuery') AS string;  
-- RTRIM(value) - usuwa białe znaki po prawej
SELECT RTRIM('         BigQuery        ') AS string; 
-- TRIM(value) - usuwa białe znaki po prawej
SELECT TRIM('         BigQuery        ') AS string; 
-- REPLACE(original_value, from_value, to_value)
SELECT REPLACE('Python3.6', '6', '7') AS string;
-- REVERSE(value) - odwraca łańcuch znaków
SELECT REVERSE('123456') AS string;
-- SPLIT(value, [delimiter]), domyślny rozdzielnik ','
SELECT SPLIT('Google Cloud Platform', ' ') AS splitted_text;
-- SPLIT(value, [delimiter])
SELECT *, CONCAT(movie_name, ' ', CAST(year_of_production AS STRING)) AS full_name FROM functions.movies;

SELECT *, SPLIT(full_name, ' ') AS splitted_text FROM
(SELECT *, CONCAT(movie_name, ' ', CAST(year_of_production AS STRING)) AS full_name FROM functions.movies);
-- STRPOS(string, substring)
SELECT STRPOS('Google Cloud Platform', 'Cloud');
SELECT STRPOS('user@gmail.com', '@');
-- SUBSTR(value, position[, length]) - wycina podłańcuch z łańcucha znaków
SELECT SUBSTR('Google Cloud Platform', 8) AS substr;
SELECT SUBSTR('Google Cloud Platform', 8, 5) AS substr;
SELECT SUBSTR('Google Cloud Platform', STRPOS('Google Cloud Platform', 'C'), 5) AS substr;

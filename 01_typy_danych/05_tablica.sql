/*
Tablica w BigQuery - Array Type
  
Uporządkowana lista elementów dowolnego typu, nie będących tablicą
Tablice tablic są niedozwolone
  
Typy tablic deklarowane są za pomocą nawiasów < >, np ARRAY <INT64>, ARRAY <FLOAT64>
*/

SELECT 5;
SELECT 5 AS five;
SELECT [1, 2, 3] AS array_col;
SELECT ['python', 'sql', 'java'] AS array_col;
SELECT [true, false] AS array_col;

SELECT 
  [1, 2, 3] AS array_col,
  ['python', 'sql', 'java'] AS array_col_2,
  [true, false] AS array_col_3;
  
SELECT ARRAY<FLOAT64> [1, 2, 3] AS num_float;    
SELECT ARRAY<INT64> [1, 2, 3] AS num_int;

SELECT GENERATE_ARRAY(0, 10, 1) AS gen_array;
SELECT GENERATE_ARRAY(0, 10, 2) AS gen_array;
SELECT GENERATE_ARRAY(10, 0, -1) AS gen_array;

SELECT GENERATE_DATE_ARRAY('2019-01-01', '2020-01-01', INTERVAL 1 DAY) AS date_arr;
SELECT GENERATE_DATE_ARRAY('2019-01-01', '2020-01-01', INTERVAL 1 WEEK) AS date_arr;

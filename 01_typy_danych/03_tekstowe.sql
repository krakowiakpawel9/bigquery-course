  # Tekstowy typ danych w BigQuery:
  #  - typ tesktowy: STRING:
  #     - łańcuch znaków o dowolnej długości, domyślne kodowanie UTF-8
SELECT
  *
FROM
  `bigquery-course-257019.data_types.02_string`;
  
SELECT
  var1,
  CAST(var1 as INT64) as var1_int
FROM
  `bigquery-course-257019.data_types.02_string`;
  
SELECT
  var1,
  CAST(var1 as INT64) as var1_int,
  CAST(var1 as FLOAT64) as var1_float,
  var2
FROM
  `bigquery-course-257019.data_types.02_string`;  

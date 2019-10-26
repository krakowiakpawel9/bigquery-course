-- BOOLEAN:
--  - TRUE
--  - FALSE

SELECT * FROM `bigquery-course-257019.data_types.02_boolean`;

-- INT64 na BOOLEAN
SELECT var1, CAST(var1 as BOOLEAN) as var1_bool FROM `bigquery-course-257019.data_types.02_boolean`;

-- BOOLEAN na INT64
SELECT var2, CAST(var2 as INT64) as var2_int FROM `bigquery-course-257019.data_types.02_boolean`;

-- BOOLEAN na FLOAT64
SELECT 
  var2, 
  CAST(var2 as INT64) as var2_int,
  CAST(CAST(var2 as INT64) AS FLOAT64) as var2_float 
FROM 
  `bigquery-course-257019.data_types.02_boolean`;

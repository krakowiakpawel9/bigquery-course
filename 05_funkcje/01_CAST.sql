-- CAST(expression AS typename)
SELECT * FROM `bigquery-course-257019.functions.people`;

-- INT64 na FLOAT64
SELECT *, CAST(age AS FLOAT64) AS age_float FROM `bigquery-course-257019.functions.people`;

-- INT64 na STRING
SELECT *, CAST(age AS STRING) AS age_string FROM `bigquery-course-257019.functions.people`;

-- CONCAT()
SELECT *, CONCAT(CAST(age AS STRING), ' years old') AS age_string FROM `bigquery-course-257019.functions.people`;

SELECT
  CAST('001' AS INT64) AS id,
  CAST(2 AS BOOL) AS is_purchased,
  SAFE_CAST('a' AS DATE) AS date_purchased;


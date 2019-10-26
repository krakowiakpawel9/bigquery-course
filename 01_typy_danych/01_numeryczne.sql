/*
Numeryczne typy danych w BigQuery:
  
 - liczba całkowita: INT64:
 - storage: 8 bytes
 - zakres: -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807
  
 - numeryczny: NUMERIC: (dokładność do 9 liczby po przecinku)
    - storage: 16 bytes
    - zakres: -99999999999999999999999999999.999999999 to 99999999999999999999999999999.999999999
  
 - liczba zmiennoprzecinkowa: FLOAT64:
    - storage: 16 bytes
    - zakres: wartości dziesiętne podwójnej precyzji (przybliżone)
*/

SELECT * FROM `bigquery-course-257019.data_types.01_numeric`;
SELECT var1, var3 FROM `bigquery-course-257019.data_types.01_numeric`;

SELECT var1 FROM `bigquery-course-257019.data_types.01_numeric`;
SELECT var1, CAST(var1 AS FLOAT64) AS var1_float FROM `bigquery-course-257019.data_types.01_numeric`; -- INT64 na FLOAT64

SELECT var2 FROM `bigquery-course-257019.data_types.01_numeric`;
SELECT var2, CAST(var2 AS INT64) AS var2_int FROM `bigquery-course-257019.data_types.01_numeric`; -- FLOAT64 na INT64
SELECT var3, CAST(var3 AS INT64) AS var3_int FROM `bigquery-course-257019.data_types.01_numeric`; -- FLOAT64 na INT64

SELECT 
  var1,
  var2,
  var3,
  CAST(var1 AS FLOAT64) AS var3_float,
  CAST(var2 AS INT64) AS var2_int,
  CAST(var3 AS INT64) AS var3_int
FROM 
  `bigquery-course-257019.data_types.01_numeric`;

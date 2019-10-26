  /*
data w BigQuery:
  
 - typ daty: DATE:
    - data kalendarzowa, np. 2019-01-01 (niezależnie od strefy czasowej)
  
 - typ daty: DATETIME:
    - reprezentuje rok, miesiąc, dzień, godzinę, minutę, sekundę i części ułakmowe sekundy. np. 2019-01-01 01:00:00 (konkretny punkt w czasie)
  
czas w BigQuery:
  
 - typ casu: TIME:
    - reprezentuje czas, niezależenie od daty, np. 00:04:45
  
 - typ czasu: TIMESTAMP:
    - reprezentuje punkt w czasie z mikrosekundową precyzją
*/
  -- DATE na DATETIME
SELECT
  var5,
  CAST(var5 AS DATETIME) as var5_datetime
FROM
  `bigquery-course-257019.data_types.04_date_time`;
  
  -- TIMESTAMP na DATE
SELECT
  var2,
  CAST(var2 AS DATE) as var5_date
FROM
  `bigquery-course-257019.data_types.04_date_time`;  
  

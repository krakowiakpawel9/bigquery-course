-- Funkcje daty
  
-- CURRENT_DATE([time_zone]) - zwraca obecną datę, funkcja przyjmuje opcjonalny parametr time_zone reprezentujący strefę czasową. 
-- Domyślna strefa czasowa UTC
SELECT CURRENT_DATE() AS now;
SELECT CURRENT_DATE('+02:00') AS now;

-- EXTRACT(part FROM date) - zwraca odpowiednią żądaną wartość z daty
SELECT
  CURRENT_DATE('+02:00') AS now,
  EXTRACT(DAY FROM CURRENT_DATE('+02:00')) AS day,
  EXTRACT(DAYOFWEEK FROM CURRENT_DATE('+02:00')) AS day_of_week,
  EXTRACT(DAYOFYEAR FROM CURRENT_DATE('+02:00')) AS day_of_year,
  EXTRACT(WEEK FROM CURRENT_DATE('+02:00')) AS week,
  EXTRACT(MONTH FROM CURRENT_DATE('+02:00')) AS month,
  EXTRACT(QUARTER FROM CURRENT_DATE('+02:00')) AS quarter,
  EXTRACT(YEAR FROM CURRENT_DATE('+02:00')) AS year;

-- DATE(year, month, day) - tworzy datę
SELECT DATE(2000, 12, 2) AS date;
  
-- DATE_ADD(date, INTERVAL INT64 date_part) - dodaje określony interwał do daty
SELECT 
  CURRENT_DATE('+02:00') AS now,
  DATE_ADD(CURRENT_DATE('+02:00'), INTERVAL 3 DAY) AS three_days_later,
  DATE_ADD(CURRENT_DATE('+02:00'), INTERVAL 2 WEEK) AS two_weeks_later,
  DATE_ADD(CURRENT_DATE('+02:00'), INTERVAL 3 MONTH) AS three_months_later,
  DATE_ADD(CURRENT_DATE('+02:00'), INTERVAL 3 QUARTER) AS three_quarters_later,
  DATE_ADD(CURRENT_DATE('+02:00'), INTERVAL 3 YEAR) AS three_years_later;
  
-- DATE_SUB(date, INTERVAL INT64 date_part) - odejmuje określony interwał od daty
SELECT 
  CURRENT_DATE('+02:00') AS now,
  DATE_SUB(CURRENT_DATE('+02:00'), INTERVAL 3 DAY) AS three_days_ago,
  DATE_SUB(CURRENT_DATE('+02:00'), INTERVAL 2 WEEK) AS two_weeks_ago,
  DATE_SUB(CURRENT_DATE('+02:00'), INTERVAL 3 MONTH) AS three_months_ago,
  DATE_SUB(CURRENT_DATE('+02:00'), INTERVAL 3 QUARTER) AS three_quarters_ago,
  DATE_SUB(CURRENT_DATE('+02:00'), INTERVAL 3 YEAR) AS three_years_ago;

-- DATE_DIFF(date1, date2, date_part) - zwraca liczbę date_part pomiędzy datą date1 oraz date3
SELECT 
  DATE_DIFF(DATE '2021-10-01', DATE '2020-09-01', DAY) AS diff_day,
  DATE_DIFF(DATE '2021-10-01', DATE '2020-09-01', WEEK) AS diff_week,
  DATE_DIFF(DATE '2021-10-01', DATE '2020-09-01', MONTH) AS diff_month,
  DATE_DIFF(DATE '2021-10-01', DATE '2020-09-01', YEAR) AS diff_year;


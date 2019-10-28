-- Funkcja okna OVER()
SELECT * FROM functions.tips;

SELECT DISTINCT day FROM functions.tips;

-- Wyznaczanie okna za pomocą PARTITION BY
SELECT 
  *,
  AVG(total_bill) OVER(PARTITION BY day) AS avg_total_bill_by_day,
  AVG(tip) OVER(PARTITION BY day) AS avg_tip_by_day
FROM 
  functions.tips;  
-- Wyznaczanie okna za pomocą PARTITION BY, sortowanie za pomocą ORDER BY 
SELECT 
  *,
  SUM(total_bill) OVER(PARTITION BY day ORDER BY total_bill) AS runnig_sum,
  COUNT(total_bill) OVER(PARTITION BY day ORDER BY total_bill) AS running_count
FROM 
  functions.tips;  
-- Wyznaczanie okna za pomocą PARTITION BY, sortowanie za pomocą ORDER BY, dokładne wyznaczanie wartości za pomocą ROWS
-- ROWS:
--   UNBOUNDED PRECEDING - wszystkie rekordy od początku okna
--   <INTEGER> PRECEDING - konkretna liczba wierszy poprzedzających
--   CURRENT ROW - konkretny wiersz dla którego przeprowadzana jest kalkulacja
--   <INTEGER> FOLLOWING - konkretna liczba wierszy następujących po danym elemencie
--   UNBOUNDED FOLLOWING - wszystkie wiersze do końca okna

SELECT 
  *,
  SUM(total_bill) OVER(PARTITION BY day ORDER BY total_bill DESC ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS sum_1,
  SUM(total_bill) OVER(PARTITION BY day ORDER BY total_bill DESC ROWS BETWEEN UNBOUNDED PRECEDING AND 0 FOLLOWING) AS sum_2,
  SUM(total_bill) OVER(PARTITION BY day ORDER BY total_bill DESC ROWS BETWEEN 9 PRECEDING AND 0 FOLLOWING) AS sum_3
FROM 
  functions.tips;  

SELECT 
  *,
  AVG(close) OVER(ORDER BY date) AS avg_close,
  AVG(close) OVER(ORDER BY date ROWS 4 PRECEDING) AS mov_avg_5,
  AVG(close) OVER(ORDER BY date ROWS 14 PRECEDING) AS mov_avg_15
FROM 
  DQL.google;

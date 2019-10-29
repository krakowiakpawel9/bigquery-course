-- Praca z tablicami
CREATE TABLE functions.arrays2 (id INT64, expenses ARRAY<FLOAT64>);

INSERT INTO functions.arrays2 VALUES (1, [19.99, 24.99]);
INSERT INTO functions.arrays2 VALUES (2, [9.99, 4.99, 7.49]);
INSERT INTO functions.arrays2 VALUES (3, [19.99, 2.99, 3.50, 7.50]);

SELECT * FROM functions.arrays2 ORDER BY id;

SELECT SUM(col1) AS total_sum FROM functions.arrays2, UNNEST(arrays2.expenses) AS col1;

SELECT 
  SUM(col1) AS total_sum,
  AVG(col1) AS avg_exp
FROM 
  functions.arrays2, 
  UNNEST(arrays2.expenses) AS col1;
  
SELECT 
  id,
  (SELECT SUM(col1) FROM UNNEST(t1.expenses) AS col1) AS total_expenses_by_user
FROM 
  functions.arrays2 AS t1
ORDER BY
  id;
  
SELECT 
  id,
  (SELECT SUM(col1) FROM UNNEST(t1.expenses) AS col1) AS total_expenses_by_user,
  (SELECT AVG(col1) FROM UNNEST(t1.expenses) AS col1) AS avg_expenses_by_user
FROM 
  functions.arrays2 AS t1
ORDER BY
  id;  
  
SELECT 
  *,
  (SELECT SUM(col1) FROM UNNEST(t1.expenses) AS col1) AS total_expenses_by_user,
  (SELECT AVG(col1) FROM UNNEST(t1.expenses) AS col1) AS avg_expenses_by_user
FROM 
  functions.arrays2 AS t1
ORDER BY
  id;   
  
-- ARRAY_CONCAT_AGG()
SELECT ARRAY_CONCAT_AGG(expenses) FROM functions.arrays2;

-- CROSS JOIN
SELECT id, expenses FROM functions.arrays2;
SELECT id, col FROM functions.arrays2 CROSS JOIN UNNEST(arrays2.expenses) AS col ORDER BY id;

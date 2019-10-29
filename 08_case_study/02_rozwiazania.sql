-- 1. Wybierz 5 pierwszych wierszy z tabeli images ze zbioru open_images.
SELECT * FROM `bigquery-public-data.open_images.images` LIMIT 5;

-- 2. Policz liczbę wierszy w tabeli images
SELECT COUNT(*) AS count FROM `bigquery-public-data.open_images.images`;

-- 3. Policz unikalną liczbę wierszy w tabeli images w oparciu o kolumnę image_id
SELECT COUNT(DISTINCT image_id) AS count FROM `bigquery-public-data.open_images.images`;

-- 4. Policz unikalną liczbę wartości kolumny title
SELECT COUNT(DISTINCT title) AS count FROM `bigquery-public-data.open_images.images`;

-- 5. Wybierz kolumny: image_id, subset, original_url, title, original_size z tabeli images ze zbioru open_images.
SELECT
  image_id, subset, original_url, title, original_size
FROM 
  `bigquery-public-data.open_images.images` 
LIMIT 5;

-- 6. Wybierz 5 zdjęć z najmniejszym rozmiarem
SELECT
  image_id, subset, original_url, title, original_size
FROM 
  `bigquery-public-data.open_images.images` 
ORDER BY
  original_size
LIMIT 5;

-- 7. Wybierz 5 zdjęć z największym rozmiarem
SELECT
  image_id, subset, original_url, title, original_size
FROM 
  `bigquery-public-data.open_images.images` 
ORDER BY
  original_size DESC
LIMIT 5;

-- 8. Wybierz unikalne wartości dla kolumny subset (rodzaj zbioru)
SELECT DISTINCT subset FROM `bigquery-public-data.open_images.images`;

-- 9. Policz częstość występowania każdego rodzaju zbioru w tabeli images
SELECT 
  t1.subset,
  COUNT(t1.subset) AS count
FROM 
  `bigquery-public-data.open_images.images` AS t1
GROUP BY 
  t1.subset;

-- 10. Policz częstość występowania (procentowo) każdego rodzaju zbioru w tabeli images
SELECT 
  t1.subset,
  COUNT(t1.subset) / (SELECT COUNT(subset) FROM `bigquery-public-data.open_images.images`) AS share
FROM 
  `bigquery-public-data.open_images.images` AS t1
GROUP BY 
  t1.subset;
  
-- 11. Policz częstość występowania (procentowo) każdego rodzaju zbioru w tabeli images, wynik zaokrąglij do 4 miejsca po przecinku 
SELECT 
  t1.subset,
  ROUND(COUNT(t1.subset) / (SELECT COUNT(subset) FROM `bigquery-public-data.open_images.images`), 4) AS share
FROM 
  `bigquery-public-data.open_images.images` AS t1
GROUP BY 
  t1.subset;
  
-- 12. Wybierz 5 pierwszych wierszy z tabeli labels ze zbioru open_images.
SELECT * FROM `bigquery-public-data.open_images.labels` LIMIT 5;
  
-- 13. Połącz metodą INNER JOIN tabele images oraz labels. Wybierz kolumny: image_id, subset, original_url, title, original_size
--    source, label_name, confidence oraz wyświetl 5 pierwszych wierszy
SELECT
  t1.image_id, 
  t1.subset, 
  t1.original_url, 
  t1.title, 
  t1.original_size,
  t2.source,
  t2.label_name,
  t2.confidence
FROM 
  `bigquery-public-data.open_images.images` AS t1
INNER JOIN 
  `bigquery-public-data.open_images.labels` AS t2
ON
  t1.image_id = t2.image_id
LIMIT 5;

-- 14. Wybierz 5 pierwszych wierszy z tabeli dict ze zbioru open_images.
SELECT * FROM `bigquery-public-data.open_images.dict` LIMIT 5;

-- 15. Połącz metodą INNER JOIN tabele images, labels oraz dict. Wybierz kolumny: image_id, subset, original_url, title, original_size
--    source, label_name, confidence, label_display_name oraz wyświetl 5 pierwszych wierszy
SELECT
  t1.image_id, 
  t1.subset, 
  t1.original_url, 
  t1.title, 
  t1.original_size,
  t2.source,
  t2.label_name,
  t2.confidence,
  t3.label_display_name
FROM 
  `bigquery-public-data.open_images.images` AS t1
INNER JOIN 
  `bigquery-public-data.open_images.labels` AS t2
ON
  t1.image_id = t2.image_id
INNER JOIN 
  `bigquery-public-data.open_images.dict` AS t3
ON 
  t2.label_name = t3.label_name
LIMIT 5;

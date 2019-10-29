-- Praca z tablicami
CREATE TABLE functions.arrays (id INT64, language ARRAY<STRING>);

INSERT INTO functions.arrays VALUES (1, ['python', 'sql', 'r']);
INSERT INTO functions.arrays VALUES (2, ['python', 'java', 'scala', 'c++']);
INSERT INTO functions.arrays VALUES (3, ['c', 'python', 'sql', 'r']);

SELECT * FROM functions.arrays;

-- OFFSET(), ORDINAL()
SELECT id, language, language[OFFSET(0)] AS first_value FROM functions.arrays ORDER BY id;
SELECT id, language[OFFSET(0)] AS first_value FROM functions.arrays ORDER BY id;

SELECT id, language, language[ORDINAL(1)] AS first_value FROM functions.arrays ORDER BY id;
SELECT id, language[ORDINAL(1)] AS first_value FROM functions.arrays ORDER BY id;

SELECT 
  id, 
  language, 
  language[OFFSET(0)] AS first_value,
  language[OFFSET(1)] AS second_value
FROM 
  functions.arrays 
ORDER BY
  id;
  
-- ARRAY_LENGTH()
SELECT 
  id, 
  language[OFFSET(0)] AS first_value,
  language[OFFSET(1)] AS second_value,
  ARRAY_LENGTH(language) AS len
FROM 
  functions.arrays 
ORDER BY
  id;
  
 
-- UNNEST
SELECT * FROM functions.arrays;
SELECT * FROM functions.arrays, UNNEST(arrays.language) AS lang;
SELECT id, lang FROM functions.arrays, UNNEST(arrays.language) AS lang ORDER BY id;

-- ARRAY_AGG()
SELECT * FROM functions.arrays, UNNEST(arrays.language) AS lang;
SELECT ARRAY_AGG(lang) AS all_lang FROM functions.arrays, UNNEST(arrays.language) AS lang;
SELECT ARRAY_AGG(lang ORDER BY lang) AS all_lang FROM functions.arrays, UNNEST(arrays.language) AS lang;

-- ARRAY_TO_STRING()
SELECT id, ARRAY_TO_STRING(language, ' ') AS string FROM functions.arrays;
SELECT id, ARRAY_TO_STRING(language, ',') AS string FROM functions.arrays;

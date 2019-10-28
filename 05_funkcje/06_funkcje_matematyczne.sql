CREATE OR REPLACE TABLE functions.movies (
  id STRING NOT NULL,
  movie_name STRING,
  rating FLOAT64,
  duration FLOAT64,
  is_polish BOOL,
  x FLOAT64
);

INSERT INTO functions.movies VALUES ('001', 'Batman', 4.5, 92.0, false, -2.0);
INSERT INTO functions.movies VALUES ('002', 'Spiderman', 4.75, 90.0, false, 0);
INSERT INTO functions.movies VALUES ('003', 'Django', 4.9, 160.0, false, 4);
INSERT INTO functions.movies VALUES ('004', 'Killer', 4.9, null, true, null);
INSERT INTO functions.movies VALUES ('005', 'Gladiator', null, 155.0, false, 5);

-- Funkcje matematyczne
  
-- ABS(x) - wartość bezwzględna
SELECT 
  *,
  ABS(x) AS absolute_value
FROM
  functions.movies;
-- SIGN(x) - zwraca -1 gdy liczba ujemna, 0 gdy 0, 1 gdy liczba dodatnia
SELECT 
  *,
  SIGN(x) AS sign
FROM
  functions.movies;
-- dzielenie przez zero
SELECT 1 / 0;

-- SAFE_DIVIDE(X, Y) - bezpieczne dzielenie, nie wywoła błędu, a w jego przypadku zwróci null
SELECT SAFE_DIVIDE(1, 0);

-- RAND() - zwraca pseudolosową liczbę z przedziału [0, 1)
SELECT RAND();

-- SQRT(X) - pierwiastek kwadratowy
SELECT SQRT(9) AS root;
SELECT SQRT(ABS(x)) AS root FROM functions.movies;
-- POW(X, Y) - X do potęgi Y, POWER() - synonim POW()
SELECT POW(2, 8) as power;

-- ROUND(X, N) - zaokrągla X do N miejsc po przecinku
SELECT RAND();
SELECT ROUND(RAND(), 2);

-- jedna zmienna
CREATE FUNCTION functions.multiply_by_5(x INT64) AS (x * 5);

SELECT functions.multiply_by_5(10) AS result;

-- wielu zmiennych
CREATE FUNCTION functions.calculate_area(x FLOAT64, y FLOAT64) AS ( x * y);

SELECT functions.calculate_area(3.5, 4.2) AS result;

-- IFNULL(expr, null_result)
SELECT * FROM functions.movies;

SELECT *, IFNULL(duration, 0) AS duration_not_null FROM functions.movies;

-- NULLIF(expr, expr_to_match
SELECT *, NULLIF(movie_name, 'Killer') AS killer_flag FROM functions.movies;

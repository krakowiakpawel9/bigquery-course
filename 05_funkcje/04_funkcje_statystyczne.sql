-- Statystyczne funkcje agregujące:
  
-- CORR(X1, X2) - współczynnik korelacji, ignoruje pary, gdzie występuje minimum jedna wartość NULL
SELECT CORR(rating, duration) AS wsp_korelacji FROM functions.movies;

-- COVAR_POP(X1, X2) - kowariancja populacji, ignoruje pary, gdzie występuje minimum jedna wartość NULL
SELECT COVAR_POP(rating, duration) AS kow_pop FROM functions.movies;
-- COVAR_SAMP(X1, X2) - kowariancja próbki, ignoruje pary, gdzie występuje minimum jedna wartość NULL
SELECT COVAR_SAMP(rating, duration) AS kow_samp FROM functions.movies;

-- STDDEV_POP(expression) - odchylenie standardowe populacji, ignoruje NULL
SELECT STDDEV_POP(rating) AS kow_pop FROM functions.movies;
-- STDDEV_SAMP(expression) - odchylenie standardowe próbki, ignoruje NULL
-- STDDEV(expression) - alias STDDEV_SAMP
SELECT STDDEV(rating) AS kow_pop FROM functions.movies;
  
-- VAR_POP(expression) - wariancja populacji
-- VAR_SAMP(expression) - wariancja probki
-- VARIANCE(expression) - alias VAR_SAMP
SELECT VARIANCE(rating) AS kow_pop FROM functions.movies;

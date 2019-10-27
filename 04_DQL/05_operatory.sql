/*
Operatory arytmetyczne
  
Dodawanie	  X + Y
Odejmowanie	X - Y
Mnożenie	  X * Y
Dzielenie	  X / Y
Minus 	    -X
  
Operatory porównania
  
Mniejszy niż           X < Y
Mniejszy niż lub równy X <= Y
Większy niż            X > Y
Większy niż lub równy  X >= Y
Równy                  X = Y
Nierówny               X != Y, X <> Y
Pomiędzy               X [NOT] BETWEEN Y AND Z - równoważne zapisowi Y <= X AND X <= Z
Podobny jak            X [NOT] LIKE Y - sprawdza czy string X zawieta pattern Y, 
                       np. '%' - dopasowuje dowolną liczbę znaków, '_' - dopasowuje tylko jeden znak
Zawieranie             IN 
  
Operatory logiczne
  
Zaprzeczenie  NOT X
Koniunkcja    X AND Y
Alternatywa   X OR Y
*/
SELECT * FROM DQL.google LIMIT 10;

SELECT * FROM DQL.google WHERE close BETWEEN 500 AND 600;
SELECT * FROM DQL.google WHERE close NOT BETWEEN 500 AND 600;

CREATE TABLE DQL.movies (
  movie_id INT64,
  movie_name STRING,
  rating FLOAT64
); 

INSERT INTO DQL.movies VALUES (1, 'Batman', 4.5);
INSERT INTO DQL.movies VALUES (2, 'Spiderman', 4.75);
INSERT INTO DQL.movies VALUES (3, 'Killer', 4.8);
INSERT INTO DQL.movies VALUES (4, 'Gladiator', 4.85);
INSERT INTO DQL.movies VALUES (5, 'Pianista', 4.7);

SELECT * FROM DQL.movies;

SELECT * FROM DQL.movies WHERE movie_name LIKE '%man';
SELECT * FROM DQL.movies WHERE movie_name NOT LIKE '%man';

SELECT * FROM DQL.movies WHERE movie_name LIKE '%MAN';

SELECT * FROM DQL.movies WHERE movie_name LIKE '___man';
SELECT * FROM DQL.movies WHERE movie_name NOT LIKE '___man';

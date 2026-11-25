-- PRACTICA 2 - Movies

-- EJERCICIO 1: Peliculas que fueron un fracaso

SELECT title, revenue, budget
FROM movies
WHERE status = 'Released'
AND revenue <= budget;

-- EJERCICIO 2: Peliculas de la saga Terminator

SELECT title, release_date
FROM movies
WHERE LOWER(title) LIKE '%terminator%';

-- EJERCICIO 3: Peliculas de mas de dos horas

SELECT title, runtime, vote_average
FROM movies
WHERE runtime > 120;

-- EJERCICIO 4: Peliculas no estrenadas

SELECT title, status, budget
FROM movies
WHERE status <> 'Released';

-- EJERCICIO 5: Peliculas religiosas bien valoradas

SELECT title, vote_average, overview
FROM movies
WHERE vote_average > 7
AND LOWER(overview) LIKE '%god%';

-- EJERCICIO 6: Peliculas con muchas votaciones y baja valoracion

SELECT title, vote_count, vote_average, release_date
FROM movies
WHERE vote_count > 1000
AND vote_average <= 5;

-- EJERCICIO 7: Peliculas populares sobre aliens

SELECT title, popularity, release_date, vote_average
FROM movies
WHERE popularity > 100
AND LOWER(overview) LIKE '%alien%';

-- EJERCICIO 8: Peliculas antiguas

SELECT title, vote_average, release_date
FROM movies
WHERE release_date < '1980-01-01';

-- EJERCICIO 9: Longitud del Tagline

SELECT title, LENGTH(tagline) AS longitud_tagline,
       popularity, tagline
FROM movies
WHERE LENGTH(tagline) > 100;

-- EJERCICIO 10: Peliculas de una hora o menos

SELECT title, release_date, runtime, vote_average
FROM movies
WHERE runtime <= 60
AND runtime > 0;


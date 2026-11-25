-- @conn SQL_MOVIES

-- PRACTICA 3 - Movies

-- EJERCICIO 1: Peliculas populares de Estados Unidos

SELECT id, title, popularity, vote_average,
       release_date, production_countries
FROM movies
WHERE production_countries LIKE '%United States%'
ORDER BY popularity DESC;

-- EJERCICIO 2: Peliculas estadounidenses mal valoradas

SELECT id, title, popularity, vote_average,
       vote_count, production_countries
FROM movies
WHERE production_countries LIKE '%United States%'
AND vote_average <= 5
ORDER BY vote_count DESC;

-- EJERCICIO 3: Peliculas japonesas estrenadas de noche

-- La base de datos no contiene horas de estreno.
-- Se excluyen las fechas que no tienen hora registrada.

SELECT id, title, popularity, vote_average,
       DATE(release_date) AS fecha_estreno,
       TIME(release_date) AS hora_estreno,
       production_countries
FROM movies
WHERE production_countries LIKE '%Japan%'
AND LENGTH(release_date) > 10
AND (
    TIME(release_date) >= '22:00:00'
    OR TIME(release_date) <= '05:00:00'
);

-- EJERCICIO 4: Peliculas producidas en Asia

SELECT id, title, release_date, vote_average,
       popularity, production_countries
FROM movies
WHERE production_countries LIKE '%Japan%'
   OR production_countries LIKE '%China%'
   OR production_countries LIKE '%India%'
   OR production_countries LIKE '%Korea%'
ORDER BY production_countries ASC, release_date ASC;

-- EJERCICIO 5: Tratamiento de valores nulos

SELECT production_countries, original_language, title,
       COALESCE(original_title, title, 'Sin título') AS NombreFinal
FROM movies
ORDER BY production_countries ASC;

-- EJERCICIO 6: Peliculas relacionadas con Espana

-- Se busca Espana y Spain porque los paises
-- aparecen registrados en ingles.

SELECT title, production_countries,
       original_language, homepage, vote_average
FROM movies
WHERE production_countries LIKE '%España%'
   OR production_countries LIKE '%Spain%'
   OR production_companies LIKE '%España%'
   OR production_companies LIKE '%Spain%';

   
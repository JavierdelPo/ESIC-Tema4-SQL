-- PRACTICA 1 - ParaiZoo

-- EJERCICIO 1: Creacion de la base de datos y tabla

CREATE DATABASE IF NOT EXISTS ParaiZoo;

USE ParaiZoo;

CREATE TABLE IF NOT EXISTS ParaiZooHuesped (
    id INT AUTO_INCREMENT PRIMARY KEY,
    animal VARCHAR(50),
    nombre VARCHAR(50),
    sexo VARCHAR(10),
    fecha_nacimiento DATE,
    especie VARCHAR(20),
    fecha_incorporacion DATE,
    comida_diaria_kg DECIMAL(8,3),
    jaula INT,
    peso_kg DECIMAL(8,2)
);

-- EJERCICIO 2: Insercion de Parches

INSERT INTO ParaiZoo.ParaiZooHuesped (
    animal, nombre, sexo, fecha_nacimiento,
    especie, fecha_incorporacion,
    comida_diaria_kg, jaula, peso_kg
)
VALUES (
    'Conejo', 'Parches', 'Macho', '2017-09-20',
    'Herbivoro', '2019-09-13',
    0.250, 24, 1.50
);

-- EJERCICIO 3: Insercion de Spirit y Perla

INSERT INTO ParaiZoo.ParaiZooHuesped (
    animal, nombre, sexo, fecha_nacimiento,
    especie, fecha_incorporacion,
    comida_diaria_kg, jaula, peso_kg
)
VALUES
(
    'Caballo', 'Spirit', 'Macho', '2009-08-07',
    'Herbivoro', '2019-10-02', 3.000, 15, 230.00
),
(
    'Pava', 'Perla', 'Hembra', '2018-09-21',
    'Omnivoro', '2019-10-02', 0.500, 23, 42.00
);

-- EJERCICIO 4: Insercion de Fresa

INSERT INTO ParaiZoo.ParaiZooHuesped (
    animal, nombre, sexo, fecha_nacimiento,
    especie, fecha_incorporacion,
    comida_diaria_kg, jaula, peso_kg
)
VALUES (
    'Tigresa', 'Fresa', 'Hembra', NULL,
    'Carnivoro', '2019-11-20',
    4.000, 31, 42.00
);

-- EJERCICIO 5: Insercion de Nilo

INSERT INTO ParaiZoo.ParaiZooHuesped (
    animal, nombre, sexo, fecha_nacimiento,
    especie, fecha_incorporacion,
    comida_diaria_kg, jaula, peso_kg
)
VALUES (
    'Cocodrilo', 'Nilo', 'Macho', NULL,
    'Carnivoro', '2019-12-12',
    5.000, 47, 44.00
);


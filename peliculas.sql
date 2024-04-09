DROP TABLE IF EXISTS peliculas;
DROP TABLE IF EXISTS usuarios;


PRAGMA foreign_keys = ON;

CREATE TABLE 'usuarios'(
    'id' INTEGER NOT NULL UNIQUE,
    'nombre' TEXT NOT NULL  UNIQUE,
    'peliculafav' TEXT , 
    PRIMARY KEY ('id' AUTOINCREMENT)
) STRICT;

CREATE TABLE 'peliculas'(
    'id' INTEGER NOT NULL UNIQUE,
    'titulo' TEXT NOT NULL,
    'genero' TEXT  ,
    'año' INTEGER ,
    'director' TEXT,
    'autor' INTEGER NOT NULL,
    FOREIGN KEY ('autor') REFERENCES 'usuarios' ('id'),
    PRIMARY KEY ('id' AUTOINCREMENT)
) STRICT;


INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario1', 'Elvis');
INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario2', 'No mires arriba');
INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario3', 'The Batman');
INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario4', 'Dune');
INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario5', 'Top Gun: Maverick');
INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario6', 'Top Gun: Maverick');
INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario7', 'Top Gun: Maverick');
INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario8', 'Top Gun: Maverick');
INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario9', 'Top Gun: Maverick');
INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario10', 'Top Gun: Maverick');



INSERT INTO peliculas (titulo, genero, año, director, autor) VALUES ('Dune', 'Ciencia Ficción', 2021, 'Denis Villeneuve', 1);
INSERT INTO peliculas (titulo, genero, año, director, autor) VALUES ('No mires arriba', 'Comedia', 2021, 'Adam McKay', 2);
INSERT INTO peliculas (titulo, genero, año, director, autor) VALUES ('The Batman', 'Acción', 2022, 'Matt Reeves', 3);
INSERT INTO peliculas (titulo, genero, año, director, autor) VALUES ('Top Gun: Maverick', 'Acción', 2022, 'Joseph Kosinski', 4);
INSERT INTO peliculas (titulo, genero, año, director, autor) VALUES ('Elvis', 'Biopic', 1994, 'Baz Luhrmann', 5);
INSERT INTO peliculas (titulo, genero, año, director, autor) VALUES ('asd', 'Biopic', 1994, 'Baz Luhrmann', 5);
INSERT INTO peliculas (titulo, genero, año, director, autor) VALUES ('Elvis', 'Biopic', 1994, 'Baz Luhrmann', 5);
INSERT INTO peliculas (titulo, genero, año, director, autor) VALUES ('Elgtvis', 'Biopic', 1994, 'Baz Luhrmann', 5);
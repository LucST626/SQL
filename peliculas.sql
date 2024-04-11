DROP TABLE IF EXISTS peliculas;
DROP TABLE IF EXISTS usuarios;
DROP TABLE IF EXISTS pendiente;

PRAGMA foreign_keys = ON;

CREATE TABLE 'usuarios' (
    'id' INTEGER PRIMARY KEY AUTOINCREMENT,
    'nombre' TEXT NOT NULL,
    'peliculafav' INTEGER,
    FOREIGN KEY ('peliculafav') REFERENCES 'peliculas' ('id')
);

CREATE TABLE 'peliculas'(
    'id' INTEGER PRIMARY KEY AUTOINCREMENT,
    'titulo' TEXT NOT NULL,
    'genero' TEXT NOT NULL,
    'año' INTEGER NOT NULL,
    'director' TEXT NOT NULL
);

CREATE TABLE 'pendiente'(
    'id' INTEGER PRIMARY KEY AUTOINCREMENT,
    'usuario' INTEGER,
    'pelicula' INTEGER,
    FOREIGN KEY ('usuario') REFERENCES 'usuarios' ('id'),
    FOREIGN KEY ('pelicula') REFERENCES 'peliculas' ('id')
);

INSERT INTO peliculas (titulo, genero, año, director) VALUES 
('Dune', 'Ciencia Ficción', 2021, 'Denis Villeneuve'),
('No mires arriba', 'Comedia', 2021, 'Adam McKay'),
('The Batman', 'Acción', 2022, 'Matt Reeves'),
('Top Gun: Maverick', 'Acción', 2022, 'Joseph Kosinski'),
('Elvis', 'Biopic', 1994, 'Baz Luhrmann'),
('asd', 'Biopic', 1994, 'Baz Luhrmann'),
('Elvis', 'Biopic', 1994, 'Baz Luhrmann'),
('Elgtvis', 'Biopic', 1994, 'Baz Luhrmann');

INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario1', 5),
('Usuario2', 3),DROP TABLE IF EXISTS peliculas;
DROP TABLE IF EXISTS usuarios;
DROP TABLE IF EXISTS pendiente;

PRAGMA foreign_keys = ON;

CREATE TABLE 'usuarios' (
    'id' INTEGER PRIMARY KEY AUTOINCREMENT,
    'nombre' TEXT NOT NULL,
    'peliculafav' INTEGER,
    FOREIGN KEY ('peliculafav') REFERENCES 'peliculas' ('id')
);

CREATE TABLE 'peliculas'(
    'id' INTEGER PRIMARY KEY AUTOINCREMENT,
    'titulo' TEXT NOT NULL,
    'genero' TEXT NOT NULL,
    'año' INTEGER NOT NULL,
    'director' TEXT NOT NULL
);

CREATE TABLE 'pendiente'(
    'id' INTEGER PRIMARY KEY AUTOINCREMENT,
    'usuario' INTEGER,
    'pelicula' INTEGER,
    FOREIGN KEY ('usuario') REFERENCES 'usuarios' ('id'),
    FOREIGN KEY ('pelicula') REFERENCES 'peliculas' ('id')
);

INSERT INTO peliculas (titulo, genero, año, director) VALUES 
('Dune', 'Ciencia Ficción', 2021, 'Denis Villeneuve'),
('No mires arriba', 'Comedia', 2021, 'Adam McKay'),
('The Batman', 'Acción', 2022, 'Matt Reeves'),
('Top Gun: Maverick', 'Acción', 2022, 'Joseph Kosinski'),
('Elvis', 'Biopic', 1994, 'Baz Luhrmann'),
('asd', 'Biopic', 1994, 'Baz Luhrmann'),
('Elvis', 'Biopic', 1994, 'Baz Luhrmann'),
('Elgtvis', 'Biopic', 1994, 'Baz Luhrmann');

INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario1', 5),
('Usuario2', 3),
('Usuario3', 2),
('Usuario4', 1),
('Usuario5', 4),
('Usuario6', 4),
('Usuario7', 4),
('Usuario8', 4),
('Usuario9', 4),
('Usuario10', 4);

INSERT INTO pendiente(usuario, pelicula) VALUES
(1,1),
(2,3);

SELECT usuarios.nombre, peliculas.titulo AS pelicula_pendiente
FROM usuarios
JOIN pendiente ON usuarios.id = pendiente.usuario
JOIN peliculas ON pendiente.pelicula = peliculas.id;
('Usuario3', 2),
('Usuario4', 1),
('Usuario5', 4),
('Usuario6', 4),
('Usuario7', 4),
('Usuario8', 4),
('Usuario9', 4),
('Usuario10', 4);

INSERT INTO pendiente(usuario, pelicula) VALUES
(1,1),
(2,3);

SELECT usuarios.nombre, peliculas.titulo AS pelicula_pendiente
FROM usuarios
JOIN pendiente ON usuarios.id = pendiente.usuario
JOIN peliculas ON pendiente.pelicula = peliculas.id;
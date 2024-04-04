--/////////////simple version//////////
-- DROP TABLE IF EXISTS usuarios;
-- DROP TABLE IF EXISTS mensajes;

-- CREATE TABLE `usuarios` ('id', 'nombre','edad');

-- INSERT INTO usuarios VALUES(1,'admin', 33);
-- INSERT INTO usuarios VALUES(2,'camachops', 21);
-- INSERT INTO usuarios VALUES(3,'javichops', 18);
-- INSERT INTO usuarios VALUES(4,'axel', 32);

--SELECT * FROM usuarios;
--SELECT * FROM usuarios WHERE edad > 25;


DROP TABLE IF EXISTS mensajes;
DROP TABLE IF EXISTS usuarios;
PRAGMA foreign_keys = ON;

CREATE TABLE `usuarios` (
    'id' INTEGER NOT NULL UNIQUE,
    'nombre' TEXT NOT NULL UNIQUE,
    'edad' INTEGER,
    'pais' TEXT,
    'email' TEXT NOT NULL UNIQUE,
    'balance' REAL NOT NULL,
    'rol' TEXT NOT NULL,
    PRIMARY KEY ('id' AUTOINCREMENT)
    )STRICT;

CREATE TABLE `mensajes` (
    'id' INTEGER NOT NULL UNIQUE,
    'mensaje' TEXT NOT NULL,
    'autor' INTEGER NOT NULL,
    FOREIGN KEY('autor') REFERENCES 'usuarios'('id'),
    PRIMARY KEY ('id' AUTOINCREMENT)
    );

INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) VALUES('Lucas', 19, 'Francia', 'admin@gmail.com', 12, 'admin');

INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) VALUES('Alvaro', 18, 'España', 'alma@gmail.com', 756, 'usuario');

INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) VALUES('Camacho', 22, 'Congo', 'bigdaddy@gmail.com', 23545, 'mod');

INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) VALUES('Alex', 14, 'Afganistan', 'boom@gmail.com', 432, 'invitado');

INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) VALUES('Javi', 21, 'España', 'mullet@gmail.com', 1200, 'usuario');

INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) VALUES('Juan Diego', 33, 'España', 'bestteacher@gmail.com', 123456789, 'usuario');

INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) VALUES('Idaira', 21, 'Rumana', 'llegotarde@gmail.com', 3, 'usuario');

INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) VALUES('Cristian', 35, 'Republica Independiente de Canarias', 'vivacanarias@gmail.com', 235, 'usuario');

INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) VALUES('Dani', 25, 'Adaluz', 'losmanueles@gmail.com', 23454, 'mod');

INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) VALUES('Makram', 69, 'Marruecos', 'allahakbar@gmail.com', 1200, 'invitado');

INSERT INTO mensajes (mensaje, autor) VALUES('la pobreza y el hambre en el mundo terminaría si se legalizara el canibalismo', 2);

--SELECT * FROM usuarios;
--SELECT * FROM usuarios WHERE edad > 25;
CREATE:

**sqlite3 ejemplo.db**: Crea una nueva base de datos llamada "ejemplo.db".

**CREATE TABLE usuarios (id INTEGER PRIMARY KEY, nombre TEXT, email TEXT);**: Crea una tabla llamada "usuarios" con tres columnas: "id" (entero, clave primaria), "nombre" (texto) y "email" (texto).

**SELECT * FROM usuarios;**: Selecciona todas las filas de la tabla "usuarios".
SELECT nombre, email FROM usuarios;: Selecciona las columnas "nombre" y "email" de la tabla "usuarios".

**INSERT INTO usuarios VALUES (1, 'Juan', 'juan@ejemplo.com');**: Inserta una nueva fila en la tabla "usuarios" con los valores 1, "Juan" y "juan@ejemplo.com" para las columnas "id", "nombre" y "email" respectivamente.

**DROP TABLE** usuarios;: Elimina la tabla "usuarios".

**SHOW TABLES** : Muestra una lista de todas las tablas en la base de datos actual.
Otros comandos:

.schema;: Muestra la estructura de todas las tablas en la base de datos actual.
.tables;: Muestra una lista de todas las tablas en la base de datos actual.
.open;: Abre una base de datos existente.
.clone;: Crea una copia de una tabla existente.

**Comandos avanzados:**

- DISTINCT: Seleccionar valores únicos de una o más columnas en una consulta.
- COUNT: Se usa para contar el número de filas en un conjunto de resultados.
- PRAGMA FOREIGN_KEY: Activa o desactiva las restricciones de clave externa.
- STRICT: Activa o desactiva el modo estricto, que genera errores para ciertas operaciones no válidas.








- CREATE simple
  
  `sqlite3 ejemplo.db` para arrancar una  bas de datos, en cuanto mando un comando CREATE, el archivo se crea automaticamente.
  `abrir sqlite3`, creamos una tabla y usamos `.clone` para crearla, luego la podemos abrir con `.open`

- SELECT
  
  > select * from usuarios;
- INSERT
 Añadir elementos a una  tabla determinada.
  > insert into usuarios values (`valores en orden`);
- DROP
  Elimina una tabla completa de nuestra base de datos.
    > drop table usuarios;
- SHOW TABLES
 Muestra las tablas que tenemos disponibles en nuestra BD.
   > show tables;
- .schema 
  Muestra el esquema actual de todas las  tablas de la BBDD.
     > .schema;
- .tables 
  - 
  

- .open 
  
- .clone

-distinct
- count
- pragma foreign_key
- strict
- 
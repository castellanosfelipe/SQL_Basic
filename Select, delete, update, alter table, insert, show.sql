create database holamundo ;     -- Crear la base de datos
show databases;                 -- Buscar que base de datos tengo
use holamundo;                  -- Indica que base de datos debe utilizar 
create table animales (         -- Crear tabla con especificaciones de cada columna
   id int,
   tipo varchar(255),
   estado varchar(255),
   PRIMARY KEY (id)
);

Alter table animales MODIFY COLUMN id INT auto_increment;  -- Modificar para que la columna id se auto incremental
show create table animales;

CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO animales (tipo, estado) VALUES ('chanchito','feliz');  -- Inserta datos a las columnas tipo y estado
INSERT INTO animales (tipo, estado) VALUES ('dragon','feliz');     -- Inserta datos a las columnas tipo y estado
INSERT INTO animales (tipo, estado) VALUES ('felipe','triste');    -- Inserta datos a las columnas tipo y estado

SELECT * FROM animales;  -- Seleccionar todo en la tabla animales
SELECT * FROM animales WHERE id = 1; -- Seleccionar todo en la tabla animales donde el id sea igual a 1  
SELECT * FROM animales WHERE estado = 'feliz';  -- Seleccionar todo en la tabla animales donde el estado sea igual a feliz
SELECT * FROM animales WHERE estado = 'feliz'AND tipo = 'chanchito'; -- Seleccionar todo en la tabla animales donde el estado sea igual a feliz y el tipo se igual a chanchito
UPDATE animales SET estado = 'feliz' where id = 3; -- Actualizar la tabla animales en la columna estado donde el id este en 3
-- En todos los delete o update se debe indicar por id porque o si no se hace, saldria error
DELETE FROM animales WHERE id = 3 ;
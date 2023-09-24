Use holamundo ;
show tables ;
CREATE TABLE user (
	id int not null auto_increment,
    name varchar(50) not null,
    edad int not null,
    email varchar(100) not null,
    primary key (id)
);

INSERT INTO user (name, edad, email) values ('oscar', 25, 'oscar@gmail.com');
INSERT INTO user (name, edad, email) values ('layla', 15, 'layla@gmail.com');
INSERT INTO user (name, edad, email) values ('nicolas', 37, 'nico@gmail.com');
INSERT INTO user (name, edad, email) values ('chanchito', 7, 'chanchito@gmail.com');

SELECT * FROM user ; -- seleccionar todos los datos en la tabla user
SELECT * FROM user limit 1; -- seleccionar todos los datos en la tabla user limitandolo a traer solo un registro
SELECT * FROM user WHERE  edad > 15; -- seleccionar todos los datos en la tabla user donde la edad sea mayor que 15
SELECT * FROM user WHERE  edad >= 15; -- seleccionar todos los datos en la tabla user donde la edad sea mayor o igual que 15
SELECT * FROM user WHERE  edad > 20 and email = 'nico@gmail.com'; -- seleccionar todos los datos en la tabla user donde la edad sea mayor que 20 y el correo sea nico@gamil.com
SELECT * FROM user WHERE  edad > 20 or email = 'layla@gmail.com' ; -- seleccionar todos los datos en la tabla user donde la edad sea mayor que 20 o qe el correo sea layla@gamil.com
SELECT * FROM user WHERE email != 'layla@gmail.com' ; -- seleccionar todos los datos en la tabla user excepto la fila del correo layla@gamil.com
SELECT * FROM user WHERE  edad between 15 and 30; -- seleccionar todos los datos en la tabla user entre 15 y 30
SELECT * FROM user WHERE email like '%gmail%' ; --  seleccionar todos los datos en la tabla user donde en la columna email tenga la palabra gmail independientemente lo que tenga adelante o atras

SELECT * FROM user order by edad asc; -- ordenar edad de forma ascendente
SELECT * FROM user order by edad desc; -- ordenar edad de forma descendente

SELECT MAX(edad) as mayor from user; -- Numero mayor
SELECT MIN(edad) as menor from user; -- Numero menor

SELECT id, name FROM user; -- Trae solo las columnas nombradas de la tabla user
SELECT id, name as chanchito FROM user; -- Cambia el nombre de la columna name a chanchito 

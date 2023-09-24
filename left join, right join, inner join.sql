CREATE TABLE products (
    id int not null auto_increment,
    name varchar(50) not null,
    created_by int not null,
    marca varchar(50) not null,
    primary key (id),
    foreign key(created_by) references user(id)
);

rename table products to product ;  -- Renombro la tabla products a product

insert into product (name,created_by, marca)
values 
      ('ipad', 1, 'apple'),  -- producto como nombre 'ipad', lo creo el usuario 1 y es de marca apple
      ('iphone', 1, 'apple'),
      ('watch', 2, 'apple'),
      ('mackbook', 1, 'apple'),
      ('imac', 3, 'apple'),
      ('ipad mini', 2, 'apple');
      
SELECT * FROM product;
SELECT u.id, u.email, p.name FROM user u left join product p on u.id = p.created_by ; -- trae todos los dato relacionados con la tabla user
SELECT u.id, u.email, p.name FROM user u right join product p on u.id = p.created_by ; -- trae todos los dato relacionados con la tabla product
SELECT u.id, u.email, p.name FROM user u inner join product p on u.id = p.created_by ; -- trae todos los dato relacionados entre las dos tabla (intercepción)
SELECT u.id, u.name, p.id, p.name FROM user u cross join product p ; -- trae todos los datos comparados entre las dos tablas todos contra todos

SELECT COUNT(id), marca from product group by marca; -- Contar cuantos productos hay en la tabla de product agrupados por marca
SELECT COUNT(p.id), u.name from product p left join user u on u.id = p.created_by group by created_by; -- contar cuantos productos ah creado cada usuario
SELECT COUNT(p.id), u.name from product p left join user u -- contar cuantos productos ah creado cada usuario quecumpla con la condición que sea mayor o igual a 2
on u.id = p.created_by group by created_by
having count(p.id) >= 2;

-- Eliminar tablas

drop table animales;
drop table product;
drop table user;
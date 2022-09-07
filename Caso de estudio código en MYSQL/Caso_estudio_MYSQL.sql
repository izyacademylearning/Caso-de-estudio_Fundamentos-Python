Create database supermercado;
use supermercado;


#........creacion de tablas.......
create table cliente(
id_cliente int (10), 
nombres varchar (20),
apellidos varchar (20),
correo_electronico varchar (30),
primary key (id_cliente)
);


create table usuarios(
id_usuario int (10),
id_tipo_rol varchar (15),
id_estado varchar (10),
primary key (id_usuario)
);


create table producto(
id_producto int (10),
precio int (20),
nombre_producto varchar (30),
primary key (id_producto)
);


create table pedidos (
id_usuario int (10),
id_pedidos int (10),
id_producto int (10),
nombre_producto varchar (10),
precio int (20), 
primary key (id_usuario)
);

create table factura(
id_usuario varchar (10),
id_factura bigint (20), 
id_producto int(10),
id_pedidos int (10),
precio int (20),
primary key (id_factura)
);


#............insertar datos tabla cliente...............
insert into cliente (id_cliente, nombres, apellidos, correo_electronico) values ("03","Valeria","Londoño Ruiz","ValeriaL24@gmail.com");
insert into cliente (id_cliente, nombres, apellidos, correo_electronico) values ("04","Jose Muriel","Bustamenta Martinez","Bustamenta.325@gmail.com");
insert into cliente (id_cliente, nombres, apellidos, correo_electronico) values ("05","Isabella","Montero Giraldo","Montero90@gmail.com");
insert into cliente (id_cliente, nombres, apellidos, correo_electronico) values ("06","Rodolfo","Moralez Versos","Mora123R@gmail.com");
insert into cliente (id_cliente, nombres, apellidos, correo_electronico) values ("07","Carolina","diaz Tunja","Tunja123@gmail.com");
insert into cliente (id_cliente, nombres, apellidos, correo_electronico) values ("08","Luz Edith","lumania Velez","Velumpa@gmail.com");
insert into cliente (id_cliente, nombres, apellidos, correo_electronico) values ("09","Leonardo Fredy","Cardona Mertuna","mertuna@gmail.com");
insert into cliente (id_cliente, nombres, apellidos, correo_electronico) values ("10","Alma Carolina","Bellota Lopera","Bellota12@gmail.com");
insert into cliente (id_cliente, nombres, apellidos, correo_electronico) values ("11","Jineth","Giraldo Roma","Romina289@gmail.com");
insert into cliente (id_cliente, nombres, apellidos, correo_electronico) values ("12","Alexandra","Galeano Buritica","Galeano1021@gmail.com");
insert into cliente (id_cliente, nombres, apellidos, correo_electronico) values ("13","Jhon","Lopez Venavidez","Q.venavidez@gmail.com");
insert into cliente (id_cliente, nombres, apellidos, correo_electronico) values ("14","Valentina","Azul Goita","GoitaA1@gmail.com");
insert into cliente (id_cliente, nombres, apellidos, correo_electronico) values ("15","Victoria","Salazar Matinez","Victoria356@gmail.com");

#........ consulta tabla cliente.......
select*from cliente;



#............insertar datos tabla usuarios...............

insert into usuarios (id_usuario, id_tipo_rol, id_estado) values ("100","Comprador","activo");
insert into usuarios (id_usuario, id_tipo_rol, id_estado) values ("99","Administrador1","inactivo");
insert into usuarios (id_usuario, id_tipo_rol, id_estado) values ("98","Comprador","activo");
insert into usuarios (id_usuario, id_tipo_rol, id_estado) values ("97","Administrador2","activo");
insert into usuarios (id_usuario, id_tipo_rol, id_estado) values ("96","Comprador","activo");
insert into usuarios (id_usuario, id_tipo_rol, id_estado) values ("95","Comprador","inactivo");
insert into usuarios (id_usuario, id_tipo_rol, id_estado) values ("94","Administrador3","activo");
insert into usuarios (id_usuario, id_tipo_rol, id_estado) values ("93","Comprador","inactivo");
insert into usuarios (id_usuario, id_tipo_rol, id_estado) values ("92","Administrador4","inactivo");
insert into usuarios (id_usuario, id_tipo_rol, id_estado) values ("91","Administrador1","activo");
insert into usuarios (id_usuario, id_tipo_rol, id_estado) values ("90","Comprador","activo");

#........ consulta tabla usuario.......
select*from usuarios;
select*from usuarios where id_estado = "inactivo";

#............insertar datos tabla producto...............
insert into producto (id_producto,precio, nombre_producto) values ("10","20000","Arroz Carolina");
insert into producto (id_producto,precio, nombre_producto) values ("20","40000","Leche en polvo");
insert into producto (id_producto,precio, nombre_producto) values ("30","91000","Pañales Pequeñin");
insert into producto (id_producto,precio, nombre_producto) values ("40","89000","Carne Punta de anca");
insert into producto (id_producto,precio, nombre_producto) values ("50","10000","Salsa de tomate");
insert into producto (id_producto,precio, nombre_producto) values ("60","56800","Frijoles Bolon");
insert into producto (id_producto,precio, nombre_producto) values ("70","91000","Panela de mi tierra");

#........ consulta tabla producto.......
select*from producto;
select id_producto,precio from producto where precio=91000;

#............insertar datos tabla pedidos...............
insert into pedidos (id_usuario,id_pedidos,id_producto,nombre_producto,precio) values ("001","221","331","Lentejas","20000");
insert into pedidos (id_usuario,id_pedidos,id_producto,nombre_producto,precio) values ("002","222","332","Leche colanta","80000");
insert into pedidos (id_usuario,id_pedidos,id_producto,nombre_producto,precio) values ("003","223","333","Arepas","40000");
insert into pedidos (id_usuario,id_pedidos,id_producto,nombre_producto,precio) values ("004","224","334","Maicena","35000");
insert into pedidos (id_usuario,id_pedidos,id_producto,nombre_producto,precio) values ("005","225","335","Avena Quaker","60000");
insert into pedidos (id_usuario,id_pedidos,id_producto,nombre_producto,precio) values ("006","226","336","Cocacola","20000");
insert into pedidos (id_usuario,id_pedidos,id_producto,nombre_producto,precio) values ("007","227","337","Limpido","35000");
insert into pedidos (id_usuario,id_pedidos,id_producto,nombre_producto,precio) values ("008","228","338","Natilla","100000");
insert into pedidos (id_usuario,id_pedidos,id_producto,nombre_producto,precio) values ("009","229","339","Galletas Ducales","45000");


#........ consulta tabla pedidos.......
select*from pedidos;

#............insertar datos tabla factura...............
insert into factura (id_usuario,id_factura,id_producto,id_pedidos,precio) values ("111","401","123","555","20.000");
insert into factura (id_usuario,id_factura,id_producto,id_pedidos,precio) values ("112","402","456","556","80.000");
insert into factura (id_usuario,id_factura,id_producto,id_pedidos,precio) values ("113","403","789","557","40.000");
insert into factura (id_usuario,id_factura,id_producto,id_pedidos,precio) values ("114","404","1011","558","35.000");
insert into factura (id_usuario,id_factura,id_producto,id_pedidos,precio) values ("115","405","1213","559","60.000");
insert into factura (id_usuario,id_factura,id_producto,id_pedidos,precio) values ("116","406","1415","600","20.000");
insert into factura (id_usuario,id_factura,id_producto,id_pedidos,precio) values ("117","407","1617","601","35.000");
insert into factura (id_usuario,id_factura,id_producto,id_pedidos,precio) values ("118","408","1819","602","100.000");
insert into factura (id_usuario,id_factura,id_producto,id_pedidos,precio) values ("119","409","1920","603","45.000");

#........ consulta tabla factura.......
select*from factura;
select*from factura where id_producto = (456) or precio = (20000);


CREATE PROCEDURE `VER_PRODUCTO`() NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER SELECT * FROM productos;


CREATE PROCEDURE `VER_CLIENTE`() DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER SELECT * FROM cliente;


CREATE PROCEDURE `VER_POR_FACTURA`(IN `ID_FACTURA` BIGINT) DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER SELECT * FROM factura WHERE FACTURA > ID_FACTURA;



#........... procedimientos almacenados.............

delimiter //
create procedure cliente(
in _id_cliente int (10), 
in _nombres varchar (20),
in _apellidos varchar (20),
in _correo_electronico varchar (30)
)



Begin
    case opcion
    when "insertar" then 
         insert into cliente (id_cliente,nombres,apellidos,correo_electronico)   
		values(_id_cliente,_nombres,_apellidos,_correo_electronico);
    when "actualizar" then 
          update cliente  set
		  nombres=_nombre,apellidos=_apellidos,correo_electronico=_correo_electronico
          where id_cliente=_id_cliente;
    when "eliminar" then      
          delete from cliente
          where id_cliente=_id_cliente;
    when "consultar" then
          select * from cliente
          where id_cliente=_id_cliente;
    end case;
       end //
delimiter ;
 
#..............llamar procedimientos...............
call cliente ("03","Valeria","Londoño Ruiz","ValeriaL24@gmail.com");
call cliente ("07","Carolina","diaz Tunja","Tunja123@gmail.com");
call cliente  ("12","Alexandra","Galeano Buritica","Galeano1021@gmail.com");
call cliente  ("03","","","","","","","","consultar");
call cliente  ("05","","","","","","","","eliminar");



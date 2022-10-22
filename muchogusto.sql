create database muchogusto;

use muchogusto;

--Tabla producto
create table producto (
idproduct int,
descripcion varchar(200),
precio float,
constraint pk_pro primary key(idproduct) 
)

--Tabla administrativo
create table administrativo (
idadmin int,
nombre varchar(255),
apellido varchar(255),
constraint pk_adm primary key (idadmin)
)

--Tabla Inicio_Sesion
create table (
id_sesion int,
rol varchar(200),
comentarios varchar(255),
adm int,
mozzo int,
constraint pk_in primary key (id_sesion),
constraint fk_ini foreign key (adm) references administrativo (idadmin),
constraint fk_inim foreign key (mozzo) references mozzo (idmozzo)
)

--Tabla Mozzo

create table mozzo (
idmozzo int,
nombre varchar(200),
apellido varchar(200),
direccion varchar(250),
codigo postal(bigint),
celular varchar(200),
cli1 int,
constraint pk_moz primary key (idmozzo), 
constraint fk_ini foreign key (cli1) references clientes (idclientes)
)

--Tabla clientes

create table clientes(
idclientes bigint(10),
nombre bigint(20),
apellido varchar(200),
provincia varchar(200),
codigopostal varchar(50),
nacionalidad varchar(100),
mesas int,
constraint pk_cli primary key (idclientes), 
constraint fk_ini foreign key (mesas) references mesas_disponibles (idmesas)
)

--Tabla mesas disponibles

create mesas_disponibles(
idmesas int,
mesas int,
constraint pk_mes primary key (idmesas),
constraint fk_ini foreign key (mesas) references clientes (idclientes)
)


--Tabla menu

create table menu (
idmenu int,
desayuno varchar(200),
almuerzo varchar(200),
cena varchar(200),
precio float,
client2 int,
constraint pk_men primary key (idmenu),
constraint fk_menf foreign key (client2) references clientes (idclientes)
)

--Tabla comentarios clientes 

create table comentarios (
idcomentarios int,
comentarios varchar(200),
comen2 int,
constraint pk_com primary key (idcomentarios),
constraint fk_com2 foreign key (comen2) references clientes (idclientes)
)

--Tabla forma de pago

create table forma_pago (
idpago int,
cbu varchar(255),
efectivo float,
mercadopago float,
usermail varchar(200),
clin int,
constraint pk_fpago primary key (idpago),
constraint fk_fpag foreign key (clie) references clientes (idclientes)
)

#Insertar productos

insert into producto (idproduct, descripcion, precio ) values ("01", "lomito", "150.00" );
insert into producto (idproduct, descripcion, precio ) values ("02", "empanadas de verdura", "130.00" );
insert into producto (idproduct, descripcion, precio ) values ("03", "empanadas de pollo", "140.00" );
insert into producto (idproduct, descripcion, precio ) values ("04", "empanadas de carne", "160.00" );
insert into producto (idproduct, descripcion, precio ) values ("05", "pizza rellena", "170.00" );

#Insertar Gerentes

insert into administrativo (idadmin, nombre, apellido ) values ("01", "Juan", "Olmos" );
insert into administrativo (idadmin, nombre, apellido ) values ("02", "Manuel", "Lastra" );
insert into administrativo (idadmin, nombre, apellido ) values ("03", "Andres", "Almagro" );
insert into administrativo (idadmin, nombre, apellido ) values ("04", "Pedro", "Dos" );
insert into administrativo (idadmin, nombre, apellido ) values ("05", "Jose", "Juarez" );

#Insertar Mozzo
insert into mozzo (idmozzo, nombre, apellido, codigopostal, celular) values ("01", "Juan", "Olmos", "5000", "157654654" );
insert into mozzo (idmozzo, nombre, apellido, codigopostal, celular) values ("02", "Juana", "Mendez", "5000", "157658654" );
insert into mozzo (idmozzo, nombre, apellido, codigopostal, celular) values ("03", "Manuel", "Suarez", "5000", "157754654" );
insert into mozzo (idmozzo, nombre, apellido, codigopostal, celular) values ("04", "Mario", "Castro", "5000", "157654654" );
insert into mozzo (idmozzo, nombre, apellido, codigopostal, celular) values ("05", "Jose", "De Maria", "5000", "154654654" );

#Insertar Clientes
insert into Clientes (idclientes, nombre, apellido, provincia, codigopostal, nacionalidad, mesas) values ("01", "Juan", "Olmos", "cordoba","5000", "argentino","001");
insert into Clientes (idclientes, nombre, apellido, provincia, codigopostal, nacionalidad, mesas) values ("02", "Josefina", "COrdoba", "cordoba","5000", "argentino","002");
insert into Clientes (idclientes, nombre, apellido, provincia, codigopostal, nacionalidad, mesas) values ("03", "Claudia", "Nuñez", "cordoba","5000", "argentino","003");
insert into Clientes (idclientes, nombre, apellido, provincia, codigopostal, nacionalidad, mesas) values ("04", "Josefa", "Oliva", "cordoba","5000", "argentino","004");
insert into Clientes (idclientes, nombre, apellido, provincia, codigopostal, nacionalidad, mesas) values ("05", "Juana", "Olmedo", "cordoba","5000", "argentino","005");

#Insertar Mesas
insert into mesas_disponibles (idmesas, nombre) values ("001", "fumador");
insert into mesas_disponibles (idmesas, nombre) values ("002", "No fumador");
insert into mesas_disponibles (idmesas, nombre) values ("003", "fumador");
insert into mesas_disponibles (idmesas, nombre) values ("004", "No fumador");
insert into mesas_disponibles (idmesas, nombre) values ("005", "fumador");

#Insertar Menu
insert into menu (idmenu, desayuno, almuerzo, cena, precio) values ("001", "Cafe con medialunas", "tallarines", "pescado con fideos", "5.000");
insert into menu (idmenu, desayuno, almuerzo, cena, precio) values ("002", "Cafe con tostadas", "Fideos al pesto", "Pollo con papas", "5.200");
insert into menu (idmenu, desayuno, almuerzo, cena, precio) values ("003", "Cafe descafinado con medialunas", "Fideos al pesto", "Pollo al limon", "5.300");
insert into menu (idmenu, desayuno, almuerzo, cena, precio) values ("004", "Cafe cortado con medialunas", "Ravioles al pesto", "Pollo al limon", "5.700");
insert into menu (idmenu, desayuno, almuerzo, cena, precio) values ("005", "Cafe con criollos", "Sorrentinos", "Pollo a la mostaza", "7.000");

#Insertar Comentarios

insert into comentarios (idcomentarios, comentario) values ("001", "Muy bien");
insert into comentarios (idcomentarios, comentario) values ("002", "Sorrentinos buenos");
insert into comentarios (idcomentarios, comentario) values ("003", "Te con medialunas");
insert into comentarios (idcomentarios, comentario) values ("004", "Cafe quemado");
insert into comentarios (idcomentarios, comentario) values ("005", "medialunas secas");
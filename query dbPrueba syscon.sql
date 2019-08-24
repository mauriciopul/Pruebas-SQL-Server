create database dbPrueba

use dbPrueba


create table Usuario(
idUsuario bigint identity(1,1) primary key,
CodigoUsuario int not null,
Nombre varchar(50) not null,
Clave varchar(50) not null
)


create table Cliente(
idCliente bigint identity(1,1) primary key,
CodigoCliente int not null,
Nombre varchar(50)
)

create table Producto(
idProducto bigint identity(1,1) primary key,
CodigoProducto int not null,
Descripcion varchar(80),
Valor int not null
)

create table Factura(
idFactura bigint identity(1,1) primary key,
Consecutivo int not null,
Fecha date not null,
Cliente varchar(50) not null
)

create table FacturaDetalle(
idFacturaDetalle bigint identity(1,1) primary key,
Consecutivo int not null,
Producto varchar(50) not null,
Cantidad int not null,
Valor int not null
)


select * from Usuario

select * from Cliente

select * from Producto

select * from Factura

select * from FacturaDetalle








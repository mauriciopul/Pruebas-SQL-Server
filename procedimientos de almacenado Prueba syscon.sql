/*
use dbPrueba
*/
create procedure insertarUsuario
@CodigoUsuario int,
@Nombre varchar(50),
@Clave varchar(50)
as

insert into Usuario(CodigoUsuario, Nombre, Clave) 
values (@CodigoUsuario, @Nombre, @Clave)

/*
exec insertarUsuario 9999, 'UsrPrueba', 'Admin'
exec insertarUsuario 1001, 'UsrAdmin', 'Admin1.'
exec insertarUsuario 1002, 'UsrTemp', 'Tmp'
*/
create procedure actualizarUsuario

@CodigoUsuario int,
@Nombre varchar(50),
@Clave varchar(50)
as

update Usuario set 
Nombre=@Nombre,
Clave=@Clave
where CodigoUsuario=@CodigoUsuario
/*
exec actualizarUsuario 1002, 'UsrTemp', 'Temp1.'
------------------------------------------------------
*/

create procedure insertarCliente
@CodigoCliente int,
@Nombre varchar(50)
as

insert into Cliente(CodigoCliente, Nombre)
values(@CodigoCliente, @Nombre)
/*
exec  insertarCliente 98707000, 'Mauricio Pulgarin'
*/

create procedure actualizarCliente
@CodigoCliente int,
@Nombre varchar(50)
as
update Cliente set
Nombre=@Nombre
where CodigoCliente=@CodigoCliente

/*
exec actualizarCliente 98707000, 'Mauricio Pulgarin Araque'
-----------------------------------
*/

create procedure insertarProducto
@CodigoProducto int,
@Descripcion varchar(50),
@Valor int
as

insert into Producto(CodigoProducto, Descripcion, Valor)
values(@CodigoProducto, @Descripcion, @Valor)
/*
exec insertarProducto 110001, 'Blusa de Dama', 34000
*/
create procedure actualizarProducto

@CodigoProducto int,
@Descripcion varchar(50),
@Valor int
as

update Producto set
Descripcion=@Descripcion,
Valor=@Valor
where CodigoProducto=@CodigoProducto

/*
exec actualizarProducto 110001, 'Blusa de Dama', 32500
-----------------------------------------------------------
*/
create procedure insertarFactura
@Consecutivo int,
@Fecha date,
@Cliente varchar(50)
as

insert into Factura(Consecutivo, Fecha, Cliente)
values(@Consecutivo, @Fecha, @Cliente)
/*
exec insertarFactura 2001,'2009-11-23','Grupo Exito'
*/
create procedure actualizarFactura
@Consecutivo int,
@Fecha date,
@Cliente varchar(50)
as

update Factura set
Fecha=@Fecha, Cliente=@Cliente
where Consecutivo=@Consecutivo
/*
exec actualizarFactura 2001,'2009-11-22','Grupo Exito'
----------------------------------------------------------
*/
create procedure insertarFacturaDetalle
@Consecutivo int,
@Producto varchar(50),
@Cantidad int,
@Valor int
as

insert into FacturaDetalle(Consecutivo, Producto, Cantidad, Valor)
values(@Consecutivo, @Producto, @Cantidad, @Valor)

/*
exec insertarFacturaDetalle 3028, 'Blusa Dama', 500, 32500
*/
create procedure actualizarFacturaDetalle
@Consecutivo int,
@Producto varchar(50),
@Cantidad int,
@Valor int
as

update FacturaDetalle set
Producto=@Producto,
Cantidad=@Cantidad,
Valor=@Valor
where Consecutivo=@Consecutivo
/*
exec actualizarFacturaDetalle 3028, 'Blusa Dama', 450, 32500
*/













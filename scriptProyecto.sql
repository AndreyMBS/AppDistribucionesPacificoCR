use [master]
go

if( exists (select name from dbo.sysdatabases where name = 'Proyecto'))
drop database [Proyecto]
go

-- Crear DB 
create database [Proyecto]
go

-- Referenciar DB
use [Proyecto]
go

-- Usuario
create table [TblUsuario](
idUsuario int identity primary key not null,
fechaRegistro varchar(50) not null,
rol varchar(50) not null,
nombreUsuario varchar(50) not null,
pass varchar(50) not null)
go


-- Cliente
create table [TblClientes](
nombreCompleto varchar (50) not null,
cedula varchar(50) primary key not null,
telefono varchar(50)not null,
email varchar(50) not null,
direccion varchar(50)not null,
nombreUsuario varchar(50)not null,
idUsuario int not null
CONSTRAINT fk_rol FOREIGN KEY (idUsuario) REFERENCES TblUsuario (idUsuario))
go


--Clasificacion

create table [TblClasificacion](
idClasificacion int identity primary key not null,
tipo varchar(50) not null)
go

--Producto
-- D = Disposnible
-- A = Agotado
-- B = Bloqueado

create table [TblProducto](
codBarra varchar (50)primary key not null,
cedulaLegal varchar(50) not null
CONSTRAINT fk_cedulaLegal FOREIGN KEY (cedulaLegal) REFERENCES TblProveedor (cedulaLegal),
descuento decimal (18,8) not null,
unidadMedida varchar(50) not null,
foto varchar(300) not null,
estado varchar(50) not null default 'D',
precioVenta decimal (18,2) not null,
idClasificacion int not null
CONSTRAINT fk_clasificacion FOREIGN KEY (idClasificacion) REFERENCES TblClasificacion (idClasificacion))
go 

--Proveedor
create table [TblProveedor](
cedulaLegal varchar(50) primary key not null,
nombreCompleto varchar (50) not null,
telefono varchar(50)not null,
email varchar(50) not null,
direccionExacta varchar(50)not null)
go


--Cliente - Producto
create table [TblCliente_TblProducto](
cantidad int not null,
codBarra varchar (50) not null
CONSTRAINT fk_codBarra2 FOREIGN KEY (codBarra) REFERENCES TblProducto (codBarra),
cedula varchar(50)not null
CONSTRAINT fk_cedula FOREIGN KEY (cedula) REFERENCES TblClientes (cedula))
go

select * from TblProducto
go

ALTER TABLE TblProducto
ADD CONSTRAINT fk_clasificacion  FOREIGN KEY (idClasificacion)
REFERENCES TblClasificacion (idClasificacion)
go
      
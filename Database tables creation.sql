
create database Empire_transport_solution

use Empire_transport_solution

create table servicios(
	id int primary key,
	descripcion varchar(40))

Create Table Provincias(
	id int identity Primary Key,
	descripcion varchar(50))

create table pais(
	ID int primary key,
	descripcion varchar (50) )

create table sucursales(
	ID int primary key,
	descripcion varchar(50) not null,
	Id_Provincia int not null,
	foreign key(Id_Provincia) references  Provincias(id))

create table detalles_servicios(
	id int primary key,
	id_servicio int,
	descripcion varchar(max),
	origen int,
	destino int,
	destino_turistico int,
	plazo_en_dias int,
	foreign key (id_servicio) references servicios(id),
	foreign key (origen) references sucursales(id),
	foreign key (destino) references sucursales(id),
	foreign key (destino_turistico) references provincias(id))

create table Tarifas(
	id int primary key,
	id_Detalle_servicio int,
	precio decimal(13, 2),
	descuento decimal(13, 2)
	foreign key (id_Detalle_servicio) references detalles_servicios(id))

create table cliente(
	ID int primary key,
	nombre varchar(30) not null,
	apellido varchar(30) not null,
	cedula varchar(11) not null unique check (len(cedula) = 11),
	sexo char check(sexo in('F', 'M')) not null,
	direccion varchar(100) not null,
	telefono varchar(30) not null,
	correo varchar(100),
	nacionalidad int not null foreign key references pais (id))

create table Factura(
	FacturaID int primary key, 
	Cliente_ID int foreign key references cliente (id),  
	Fecha date not null)

create table detalle_factura(
	id int primary key,
	id_factura int not null foreign key references factura(FacturaId),
	id_tarifa int foreign key references tarifas(id),
	idServicio int not null foreign key references servicios(id), 
	Cantidad int)

create table estado(
	id int primary key,
	descripcion varchar(20))

create table envio(
	id int identity primary key,
	id_factura int foreign key references factura (FacturaId),
	estado int foreign key references estado (id))

create table rastreo(
	id int identity primary key,
	id_envio int foreign key references envio(id),
	ubicacion_temporal int foreign key references provincias (id))

create table clientes_hist(
	id int primary key)

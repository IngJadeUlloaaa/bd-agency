create database Agencias;
use Agencias;

create table  Viajeros(
	DNI varchar (16) primary key,
	Nombre varchar(50) not null,
	Apellido varchar(50) not null,
	Dirreccion text not null,
	Telefono varchar (15),
	Destino text not null,
	Edad varchar (15),
	Profesion text not null,
	Fecha datetime,
	Otros_Datos text not null
);

-- INSERT
insert into Viajeros(DNI, Nombre, Apellido, Dirreccion, Telefono, Destino, Edad, Profesion, Fecha, Otros_Datos) values('211572', 'Carlos', 'Ulloa', 'Altagracia 1c Arriba', '88638578', 'Las Vegas Nevadas', '20', 'Ingeniero en Sistemas', '2022-11-15', 'Soltero'),
('211573', 'Yerni', 'Mendez', 'Altagracia 1c Arriba', '88638578', 'Las Vegas Nevadas', '20', 'Ingeniero en Sistemas', '2022-11-15', 'Soltero'),
('211574', 'Luis', 'Rodriguez', 'Altagracia 1c Arriba', '88638578', 'Las Vegas Nevadas', '10', 'Doctor', '2022-11-15', 'Soltero'),
('211575', 'Marcos', 'Perez', 'Altagracia 1c Arriba', '88638578', 'Las Vegas Nevadas', '50', 'Psicologo', '2022-11-15', 'Soltero'),
('211576', 'Melvin', 'Mendez', 'Altagracia 1c Arriba', '88638578', 'Las Vegas Nevadas', '30', 'Cajero', '2022-11-15', 'Soltero'),
('211577', 'Kevin', 'Martinez', 'Altagracia 1c Arriba', '88638578', 'Las Vegas Nevadas', '20', 'Ingeniero en Sistemas', '2022-11-15', 'Soltero'),
('211578', 'Manuel', 'Moreno', 'Altagracia 1c Arriba', '88638578', 'Las Vegas Nevadas', '18', 'Conductor', '2022-11-15', 'Soltero'),
('211579', 'Karen', 'Athziri', 'Altagracia 1c Arriba', '88638578', 'Las Vegas Nevadas', '26', 'Astronomo', '2022-11-15', 'Soltero'),
('2115710', 'Carmen', 'Molon', 'Altagracia 1c Arriba', '88638578', 'Las Vegas Nevadas', '34', 'Zepol', '2022-11-15', 'Soltero'),
('2115711', 'Rosa', 'Esperanza', 'Altagracia 1c Arriba', '88638578', 'Las Vegas Nevadas', '50', 'Ingeniero en Sistemas', '2022-11-15', 'Soltero');

select * from Viajeros;

create table Origenes(
	Codigo int primary key auto_increment,
	Nombre varchar (50) not null,
	Lugar text not null,
	Interes text not null,
	Precio text not null,
	Cultura varchar (100) not null,
	Otros_Datos text not null,
	Producto text not null,
	Transporte varchar (70),
	Idea text not null
);

-- insert 
insert into Origenes(Nombre, Lugar, Interes, Precio, Cultura, Otros_Datos, Producto, Transporte, Idea) values
('Viaje1', 'San Juan del Sur', 'Vacaciones', '600', 'Nicaragua', 'Con Mascotas', 'Pasaporte', 'Yate', 'Todo Pagado'),
('Viaje2', 'Pochomil', 'Vacaciones', '500', 'Nicaragua', 'Con Mascotas', 'Pasaporte', 'Bicil', 'Todo Pagado'),
('Viaje3', 'Momotombo', 'Vacaciones', '680', 'Nicaragua', 'Con Mascotas', 'Pasaporte', 'Avion', 'Todo Pagado'),
('Viaje4', 'Xiuna', 'Vacaciones', '780', 'Nicaragua', 'Con Mascotas', 'Pasaporte', 'Carro', 'Todo Pagado'),
('Viaje5', 'Rio Coco', 'Vacaciones', '1000', 'Nicaragua', 'Con Mascotas', 'Pasaporte', 'Uber', 'Todo Pagado'),
('Viaje6', 'Villa el Carmen', 'Vacaciones', '250', 'Nicaragua', 'Con Mascotas', 'Pasaporte', 'Avion', 'Todo Pagado'),
('Viaje7', 'San Rafael', 'Vacaciones', '400', 'Nicaragua', 'Con Mascotas', 'Pasaporte', 'Uber', 'Todo Pagado'),
('Viaje8', 'Summer', 'Vacaciones', '230', 'Nicaragua', 'Con Mascotas', 'Pasaporte', 'Tren', 'Todo Pagado'),
('Viaje9', 'Masaya', 'Vacaciones', '580', 'Nicaragua', 'Con Mascotas', 'Pasaporte', 'Barco', 'Todo Pagado'),
('Viaje10', 'Corn Island', 'Vacaciones', '700', 'Nicaragua', 'Con Mascotas', 'Pasaporte', 'Yate', 'Todo Pagado');

select * from Origenes;

Create table Destinos(
	Codigo int primary key auto_increment,
	Nombre Varchar (50) not null,
	Precio text not null,
	localidad varchar (70) not null,
	Nacion text not null,
	Interes text not null,
	Regreso varchar (25) not null,
	Turismo text not null,
	compras text not null,
	Peligros varchar (100)
);

-- insert
insert into Destinos(Nombre, Precio, localidad, Nacion, Interes, Regreso, Turismo, compras, Peligros) values 
('San Juan del Sur', '600', 'Rivas', 'Nicaragua', 'Vacaciones', 'Fin de Año', 'Turismo', '100', 'Ninguno'),
('Pochomil', '500', 'Managua', 'Nicaragua', 'Vacaciones', 'Fin de Año', 'Turismo', '200', 'Ninguno'),
('Villa el Carmen', '800', 'Carazo', 'Nicaragua', 'Vacaciones', 'Fin de Año', 'Turismo', '300', 'Ninguno'),
('Corn Island', '1000', 'Costa', 'Nicaragua', 'Vacaciones', 'Fin de Año', 'Turismo', '500', 'Ninguno'),
('Pochomil', '200', 'Matagalpa', 'Nicaragua', 'Vacaciones', 'Fin de Año', 'Turismo', '700', 'Ninguno'),
('Villa Carmen', '350', 'Boaco', 'Nicaragua', 'Vacaciones', 'Fin de Año', 'Turismo', '1000', 'Ninguno'),
('Las Cruzes', '400', 'Esteli', 'Nicaragua', 'Vacaciones', 'Fin de Año', 'Turismo', '150', 'Ninguno'),
('Saltos de Angel', '250', 'Las Colinas', 'Nicaragua', 'Vacaciones', 'Fin de Año', 'Turismo', '800', 'Ninguno'),
('Sierra Leona', '310', 'Telica', 'Nicaragua', 'Vacaciones', 'Fin de Año', 'Turismo', '900', 'Ninguno'),
('Puerto Cabezas', '200', 'Wiwili', 'Nicaragua', 'Vacaciones', 'Fin de Año', 'Turismo', '500', 'Ninguno');

select * from Destinos;

create table Viajes(
	Codigo int primary key auto_increment,
	Num_Plaza int not null,
	Fecha datetime,
	Otros_Datos text,
	DNI_Viajeros varchar(16) not null,
    foreign key(DNI_Viajeros) references Viajeros(DNI),
	Codigo_Origenes int not null,
    foreign key(Codigo_Origenes) references Origenes(Codigo),
	Codigo_Destinos int not null,
    foreign key(Codigo_Destinos) references Destinos (Codigo),
	Salida text not null,
	Tiempo datetime,
	Costo text not null
);

-- insert
insert into Viajes(Num_Plaza, Fecha, Otros_Datos, DNI_Viajeros, Codigo_Origenes, Codigo_Destinos, Salida, Tiempo, Costo) values
(2110, '2022-11-20', 'Cancelado', '211572', 1, '1', 'Mañana', '2022-11-27', '600'),
(2111, '2022-11-20', 'Cancelado', '211573', 2, '2', 'Mañana', '2022-11-27', '480'),
(2112, '2022-11-20', 'Cancelado', '211574', 3, '3', 'Mañana', '2022-11-27', '650'),
(2113, '2022-11-20', 'Cancelado', '211575', 4, '4', 'Mañana', '2022-11-27', '700'),
(2114, '2022-11-20', 'Cancelado', '211576', 5, '5', 'Mañana', '2022-11-27', '180'),
(2115, '2022-11-20', 'Cancelado', '211577', 6, '6', 'Mañana', '2022-11-27', '320'),
(2116, '2022-11-20', 'Cancelado', '211578', 7, '7', 'Mañana', '2022-11-27', '850'),
(2117, '2022-11-20', 'Cancelado', '211579', 8, '8', 'Mañana', '2022-11-27', '400'),
(2118, '2022-11-20', 'Cancelado', '2115710', 9, '9', 'Mañana', '2022-11-27', '300'),
(2119, '2022-11-20', 'Cancelado', '2115711', 10, '10', 'Mañana', '2022-11-27', '950');
select * from Viajes;

-- Eliminar la columna "OTROS DATOS" de la tabla de viajes
alter table Viajes drop column Otros_Datos;

-- Listar los viajeros cuyo Nombres inicien con la letra "L"
select * from Viajeros where Nombre like 'L%';

-- Listar los Destinos que Inicien con la Letra "N" o "M"
select * from Destinos where Nombre like 'P%';

-- Listar todo de la tabla "Origen" donde su codigo sea igual a 2, 4 y 6
select * from Destinos where Codigo like 4;

-- Actualizar 2s registros de la tabla "Origen"
update Origenes set Transporte = 'Carro' where id = '1';

-- Eliminar 2s Registros de la tabla "Viajero" utilizando la clausula "where"
delete from Viajeros where id = 1;

-- Ordenar los Valores de manera Descendente
select * from Viajeros order by Nombre desc;

-- Ordenar los Valores de manera Ascendente
select * from Viajeros order by Nombre asc;

-- Agrupar de la tabla "Viajes" los DNI de los Viajeros
select DNI_Viajeros from Viajes group by DNI_Viajeros;

-- Agrupar y Mostrar de forma Descendente los origenes de la tabla "Viajes"
select Codigo_Origenes from Viajes group by Codigo_Origenes order by Codigo_Origenes desc;
use proyecto_final;



CREATE TABLE provincias (
id_provincia int NOT NULL,
provincia varchar (20), 
PRIMARY KEY (id_provincia));

CREATE TABLE ocupaciones (
id_ocupacion int NOT NULL,
ocupacion varchar (30), 
PRIMARY KEY (id_ocupacion));

CREATE TABLE clientes (
id_cliente int NOT NULL,
DNI int NOT NULL, 
nombre varchar(30), 
apellido varchar(30),
sexo char(1),
id_ocupacion char(3),
fecha_nac date,
id_provincia char(2),
mail varchar(45), 
PRIMARY KEY (id_cliente),
FOREIGN KEY (id_provincia) REFERENCES provincias (id_provincia),
FOREIGN KEY (id_ocupacion) REFERENCES ocupaciones (id_ocupacion));

CREATE TABLE prestamos (
id_prestamo int NOT NULL,
monto float,
cuota int NOT NULL,
PRIMARY KEY (id_prestamo));

CREATE TABLE productos (
id_producto int NOT NULL,
sit_en_bcra int NOT NULL, 
dif_ing_y_comp_mensual float,
cluster char(1),
PRIMARY KEY (id_producto));

CREATE TABLE horarios (
id_horarios int NOT NULL,
horario varchar(5), 
PRIMARY KEY (id_horarios));

CREATE TABLE vendedoras (
id_vendedoras int NOT NULL,
nombre varchar(30), 
apellido varchar(30),
fecha_de_inicio date,
id_horarios int NOT NULL,
PRIMARY KEY (id_vendedoras),
FOREIGN KEY (id_horarios) REFERENCES horarios(id_horarios));

CREATE TABLE cobradores (
id_cobrador int NOT NULL,
nombre varchar(30), 
apellido varchar(30),
fecha_de_inicio date,
id_horarios int NOT NULL,
PRIMARY KEY (id_cobrador),
FOREIGN KEY (id_horarios) REFERENCES horarios(id_horarios));

CREATE TABLE telefonos (
id_cliente int NOT NULL,
telefono int NOT NULL, 
PRIMARY KEY (id_cliente));

CREATE TABLE ventas (
id_venta int NOT NULL,
id_cliente int NOT NULL,
id_prestamo int NOT NULL,
dni int NOT NULL,
nombre varchar(30), 
apellido varchar(30),
sexo char(1),
id_ocupacion int NOT NULL,
ingresos float,
compromiso_mensual float,
sit_en_bcra char(1),
id_producto int NOT NULL,
id_vendedora int NOT NULL,
fecha date,
id_cobrador int NOT NULL,
PRIMARY KEY (id_venta),
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
FOREIGN KEY (id_prestamo) REFERENCES prestamos(id_prestamo),
FOREIGN KEY (id_ocupacion) REFERENCES ocupaciones(id_ocupacion),
FOREIGN KEY (id_producto) REFERENCES productos(id_producto));





CREATE database proyecto_final;
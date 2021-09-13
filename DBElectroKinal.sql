drop database DBElectroKinal;
create database DBElectroKinal;

use DBElectroKinal;

create table Cliente(
	codigoCliente int not null auto_increment,
    DPICliente varchar(15) not null,
    nombresCliente varchar(200) not null,
    direccionCliente varchar(200) not null,
    estado varchar(1) not null,
    
    primary key PK_codigoCliente (codigoCliente)
);

create table Empleado(
	codigoEmpleado int not null auto_increment,
    DPIEmpleado varchar(15) not null,
    nombresEmpleado varchar(200) not null,
    telefonoEmpleado varchar(200) not null,
    estado varchar(1) not null,
    usuario varchar(15) not null,
    
    primary key PK_codigoEmpleado (codigoEmpleado)
);

create table Producto(
	codigoProducto int not null auto_increment,
    nombreProducto varchar(200) not null,
    precioProducto double not null,
    stock int not null,
    estado varchar(1) not null,
    
    primary key PK_codigoProducto (codigoProducto)
);

create table Venta(
	codigoVenta int not null auto_increment,
    numeroSerie varchar(255) not null,
    fechaVenta date not null,
    monto double not null,
    estado varchar(1) not null,
    
    codigoCliente int not null,
    codigoEmpleado int not null,
    
    primary key PK_codigoVenta (codigoVenta),
    
    constraint FK_Venta_Cliente foreign key(codigoCliente)
			references Cliente(codigoCliente),
	constraint FK_Venta_Empleado foreign key(codigoEmpleado)
			references Empleado(codigoEmpleado)
);

create table DetalleVenta(
	codigoDetalleVenta int not null auto_increment,
    cantidad int not null,
    precioVenta double not null,
    
	codigoProducto int not null,
    codigoVenta int not null,
    
    primary key PK_codigoDetalleVenta (codigoDetalleVenta),
    
    constraint FK_DetalleVenta_Producto foreign key(codigoProducto)
			references Producto(codigoProducto),
	constraint FK_DetalleVenta_Venta foreign key(codigoVenta)
			references Venta(codigoVenta)
);

alter user'root'@'localhost' identified with mysql_native_password by 'admin';

insert into Cliente (DPICliente, nombresCliente, direccionCliente, estado)
	values ('125487965325214', 'Mía Santos', 'Zona 1', '1');
insert into Cliente (DPICliente, nombresCliente, direccionCliente, estado)
	values ('102360520148620', 'Alen Rodríguez', 'Zona 19', '1');
insert into Cliente (DPICliente, nombresCliente, direccionCliente, estado)
	values ('789852326585954', 'José Cifuentes', 'Zona 8', '1');
    
insert into Empleado (DPIEmpleado, nombresEmpleado, telefonoEmpleado, estado, usuario)
	values (555, 'Claudia Santos', '45658525', '1', 'csantos');
insert into Empleado (DPIEmpleado, nombresEmpleado, telefonoEmpleado, estado, usuario)
	values (555, 'Usuario de Prueba', '78985632', '1', 'udeprueba');
    
insert into Producto (nombreProducto, precioProducto, stock, estado)
	values ('Mouse Logitech G203 Lightsync blaco', 250.00, 23, '1');
    
select * from Empleado;
select * from Cliente;
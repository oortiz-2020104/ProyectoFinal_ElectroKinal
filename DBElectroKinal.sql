drop database if exists DBElectroKinal;
create database DBElectroKinal;
use DBElectroKinal;

create table Cliente(
	codigoCliente int not null auto_increment,
    DPICliente VARCHAR(15) not null,
    nombresCliente VARCHAR(200) not null,
	direccionCliente VARCHAR(150) not null,
	estado VARCHAR(1) not null,
    primary key PK_codigoCliente(codigoCliente)
);
Create table Empleado(
	codigoEmpleado int not null auto_increment,
    DPIEmpleado varchar(15)not null,
    nombresEmpleado varchar(200) not null,
    telefonoEmpleado varchar(8)not null,
    estado varchar(1) not null,
    usuario varchar(15) not null,
    primary key pk_codigoEmpleado(codigoEmpleado)
);
Create table Producto(
	codigoProducto int not null auto_increment,
    nombreProducto varchar(200) not null,
    precio double not null,
    stock int not null,
    estado varchar(1) not null,
    primary key PK_codigoProducto(codigoProducto)
);
create table Venta(
	codigoVenta int not null auto_increment,
    numeroSerie varchar(255) not null,
    fechaVenta date not null,
    monto double not null,
    estado varchar(1) not null,
    codigoCliente int not null,
    codigoEmpleado int not null,
    codigoProducto int not null,
    primary key PK_codigoVenta(codigoVenta),
    constraint FK_Venta_Cliente foreign key (codigoCliente) references Cliente(codigoCliente),
    constraint FK_Venta_Empleados foreign key(codigoEmpleado) references Empleado(codigoEmpleado),
    constraint FK_Venta_Producto foreign key(codigoProducto) references Producto(codigoProducto)
);
create table DetalleVenta(
	codigoDetalleVenta int not null auto_increment,
    codigoProducto int not null,
    cantidad int not null,
    precioVenta double not null,
    codigoVenta int not null,
    primary key PK_codigoDetalleVenta(codigoDetalleVenta),
    constraint FK_DetalleVenta_Producto foreign key(codigoProducto) references Producto(codigoProducto),
    constraint FK_DetalleVenta_Venta foreign key(codigoVenta) references Venta(codigoVenta)
);
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password By 'admin';

insert into Cliente(DPICliente,nombresCliente,direccionCliente,estado)
	values('152525250101','Mynor López','Mixco','1');
insert into Cliente(DPICliente,nombresCliente,direccionCliente,estado)
	values('25654890101','Pedro Armas','Mixco','1');
insert into Cliente(DPICliente,nombresCliente,direccionCliente,estado)
	values('123456780101','Jorge Perez','Guatemala','1');
insert into Cliente(DPICliente,nombresCliente,direccionCliente,estado)
	values('987654320101','Jose Chajon','Zona 1','1');
    
insert into Empleado(DPIEmpleado,nombresEmpleado,telefonoEmpleado,estado,usuario)
	values('0505050101','Carlos Ruiz','50203040','1','cruiz');
insert into Empleado(DPIEmpleado,nombresEmpleado,telefonoEmpleado,estado,usuario)
	values('20202020101','Juan Rivas','30406080','1','jrivas');
insert into Empleado(DPIEmpleado,nombresEmpleado,telefonoEmpleado,estado,usuario)
	values('123','usuarioprueba','48822092','1','uprueba');

insert into Producto(nombreProducto,precio,stock,estado)
	values('Teclado Durabrand',105.00,25,'1');
insert into Producto(nombreProducto,precio,stock,estado)
	values('Laptop Acer Nitro 5',9850.00,5,'1');   
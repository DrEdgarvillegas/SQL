create table Producto (
Id int primary key identity,
[NombreProducto] varchar (50),
[CostoProvedor] numeric (18,2),

);

create table Cliente(
Id int primary key  identity,
[Nombre] varchar (50),
[Apellido] varchar (50),
[Dirección] varchar (50),
[Teléfono] int,
[eMail] varchar (50),
);

create table Ventas (
[Venta] int primary key identity not null,
[ClienteId] int,
[ProductoId] int,
[TotalFactura] numeric (18,2),
foreign key (ProductoId) references Producto(Id) ,
foreign key (ClienteId) references Cliente(Id) ,
);

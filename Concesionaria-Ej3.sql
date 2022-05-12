create table Veh�culo(
Id int primary key identity,
[Marca] varchar(50),
[Modelo] varchar(50),
[Importe] varchar(50),
[FechaBaja] datetime,
);

create table Cliente(
Id int primary key identity,
[Nombre] varchar (50),
[Apellido] varchar(50),
[DNI] varchar(50),
[Direcci�n] varchar(50),
);

create table Venta(
Id int primary key,
[Veh�culoID] int,
[ClienteID] int,
[Importe] numeric (18,2),
[Descuento] numeric (18,2),
[Fecha] datetime,
foreign key (Veh�culoID) references Veh�culo(Id),
foreign key (ClienteID) references Cliente(Id),
);


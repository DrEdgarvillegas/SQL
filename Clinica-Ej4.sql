create table TipoEstudio(
Id int primary key identity,
[Descripción] varchar (50),
[FechaBaja] datetime,
);

create table TipoEmpleado(
Id int primary key identity,
[Nombre] varchar (50),
[Apellido] varchar (50),
);
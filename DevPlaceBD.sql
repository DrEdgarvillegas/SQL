create table Curso(
[Alumno] varchar (50) primary key not null,
[Tecnología] varchar (50) ,
[FechaInicio] datetime,
[FechaFinal] datetime,
foreign key (Tecnología) references Tecnología (TecnologíaTipo)
);

create table Tecnología(
[TecnologíaTipo] varchar (50) primary key not null,

);



create table Curso(
[Alumno] varchar (50) primary key not null,
[Tecnolog�a] varchar (50) ,
[FechaInicio] datetime,
[FechaFinal] datetime,
foreign key (Tecnolog�a) references Tecnolog�a (Tecnolog�aTipo)
);

create table Tecnolog�a(
[Tecnolog�aTipo] varchar (50) primary key not null,

);



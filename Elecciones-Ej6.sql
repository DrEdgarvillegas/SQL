create table Jurados (
[DNI] int primary key not null,
[Nombre] varchar (50),
[Apellido] Varchar (50),
);

create table Delegados(
[DNI] int primary key not null,
[Nombre] varchar (50),
[Apellido] varchar (50),

);


create table LugarVotar (
Id int primary key identity,
[Colegio] varchar (50) ,
[Direccón] varchar (50),
[Mesas] int,
[Jurados] int,
[Delegados] int,
foreign key (Jurados) references Jurados(DNI),
foreign key (Delegados) references Delegados(DNI),

);

create table Padrón (
[DNI] int primary key not null,
[Nombre] varchar (50),
[Apellido] varchar (50),
[LugarID] int,
foreign key (LugarID) references LugarVotar(Id),
);





create table RegistroVoto(
[Voto] int primary key identity,
[Votante] int,
[Partido] varchar,
foreign key (Votante) references Padrón(DNI),
);

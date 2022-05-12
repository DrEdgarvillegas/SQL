create table Película(
Id int not null primary key identity,
[Título] varchar(50),
[Género] varchar(50),
FechaBaja datetime,
);

create table Alquiler(
Id int primary key identity,
[PelículaID] int,
[Fecha] datetime,
[Precio] numeric(18,2),
foreign key (PelículaID) references Película(Id),
);
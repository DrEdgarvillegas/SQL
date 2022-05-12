create table Pel�cula(
Id int not null primary key identity,
[T�tulo] varchar(50),
[G�nero] varchar(50),
FechaBaja datetime,
);

create table Alquiler(
Id int primary key identity,
[Pel�culaID] int,
[Fecha] datetime,
[Precio] numeric(18,2),
foreign key (Pel�culaID) references Pel�cula(Id),
);
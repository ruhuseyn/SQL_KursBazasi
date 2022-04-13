
create table Telimci_Ixtisas(
Ixtisas_Id int primary key identity(1,1),
Ixtisas_Ad nvarchar(20)
)
create table Telimci_Status(
Status_Id int primary key identity(1,1),
Status_Ad nvarchar(20)
)
create table Telimci(
Telimci_Id int primary key identity(1,1),
Telimci_Ad nvarchar(20),
Telimci_Soyad nvarchar(20),
Telimci_Ataadi nvarchar(20),
Telimci_Fin int,
Telimci_Tevellud date,
Telimci_Staj tinyint,
Telimci_Ixtisas_Id int foreign key references Telimci_Ixtisas(Ixtisas_Id),
Telimci_Status_Id int foreign key references Telimci_Status(Status_Id)
)

create table Bolme(
Bolme_Id int primary key identity(1,1),
Bolme_Ad nvarchar(20)
)
create table Paket(
Paket_Id int primary key identity(1,1),
Paket_Ad nvarchar(20)
)
create table Movzu(
Movzu_Id int primary key identity(1,1),
Movzu_Ad varchar(20)
)
create table Video(
Video_Id int primary key identity(1,1),
Video_Bolme_Id int foreign key references Bolme(Bolme_Id),
Video_Paket_Id int foreign key references Paket(Paket_Id),
Video_Movzu_Id int foreign key references Movzu(Movzu_Id), 
Video_Telimci_Id int foreign key references Telimci(Telimci_Id),
Video_Link varchar(Max)
)

create database Pessoas

use Pessoas

create table Pessoas (
	IdPesssoas int primary key identity,
	NomePessoa varchar(200)
	
);

create table Telefones (
	IdTelefone int primary key identity,
	Numero bigint
	
);

create table Email (
	IdEmail int primary key identity,
	NomeEmail Varchar(200),
	Senha varchar (200),
	IdPessoas int foreign key references Pessoas(IdPesssoas)
);

create table CNH (
	IdCnh int primary key identity,
	Tipo varchar (100)
);

alter table Pessoas
add IdPessoas int foreign key references Pessoas(IdPesssoas);

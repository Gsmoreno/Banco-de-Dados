create database Optus;

use Optus;

create table Artista (
	IdArtista int primary key identity,
	Nome varchar(200) not null
);

create table Estilo (
	IdEstilo int primary key identity,
	NomeEstilo varchar (255)
);

create table Albuns (
	IdAlbum int primary key identity,
	NomeAlbum varchar(200),
	DataDeLançamento datetime,
	Localizacao varchar(200),
	Minutos int,
	Visualizacao varchar(50),
	IdArtista int foreign key references Artista(IdArtista),
	IdEstilo int foreign key references Estilo(IdEstilo)
);

create table Cliente (
	IdCliente int primary key identity,
	NomeCliente varchar(200),
	Email varchar(200) not null,
	Senha varchar(16) not null,
	Tipo varchar(100) not null
);

select * from Cliente;
select * from Estilo;
select * from Albuns;
select * from Artista;

alter table Albuns 
alter column DataDeLançamento Date;

alter table Albuns 
alter column Minutos bigint;


--DML LINGUAGEM DE MANIPULAÇÃO DE DADOS
select * from Cliente;
select * from Estilo;
select * from Albuns;
select * from Artista;

-- COMANDO DE INSERIR DADOS
insert into Estilo (NomeEstilo)
values ('Rock'),('Samba'),('Funk');

insert into Artista(Nome)
values ('Mc Davi'),('Pelé'),('Vitinho Avassalador');

insert into Albuns (NomeAlbum, DataDeLançamento, Localizacao, Minutos, Visualizacao, IdArtista, IdEstilo)
values ('Pc','29/01/2020', 'SP', 30, 'Aberta', 1, 2);

insert into Cliente (NomeCliente, Email, Senha, Tipo)
values ('Juseslaine', 'cleide@gmail.com', 'ju@13423', 'USER');

--Alterar dados
update Artista
set Nome = 'Turma do Pagode'
where IdArtista = 2;

update Cliente
set Tipo = 'ADM'
where IdCliente = 5;

update Albuns
set Visualizacao = 'Fechado'
where IdAlbum = 5;

--Limoar todos os dados da tabela
truncate table Albuns

delete from Albuns
where IdAlbum = 1;

	



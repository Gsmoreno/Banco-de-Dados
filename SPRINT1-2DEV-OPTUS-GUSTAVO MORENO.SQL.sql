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
values ('asass','2/01/2020', 'SP', 50, 'Aberta', 4, 1);

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


--DQL Linguagem de consulta de dados

select * from Artista;
select Nome from Artista;
select NomeAlbum, DataDeLançamento from Albuns;

-- Operadores <> =
select * from Albuns where IdAlbum = 1;

select * from Albuns where IdAlbum > 1;

-- OR OU

select NomeAlbum, Minutos from Albuns
where (DataDeLançamento is null) or (Localizacao is null);
	
--LIKE

select IdAlbum, NomeAlbum from Albuns
Where NomeAlbum LIKE  '%Pc%' -- no meio da frase

select IdAlbum, NomeAlbum from Albuns
Where NomeAlbum LIKE  'Pc%' -- no começo da frase

select IdAlbum, NomeAlbum from Albuns
Where NomeAlbum LIKE  '%Pc' -- no final da frase

--Ordenação
select NomeAlbum from Albuns
order by NomeAlbum;

select idAlbum, NomeAlbum, Minutos from Albuns
order by Minutos;


-- count a quantidae de linhas
select count (IdAlbum) from Albuns;

select IdArtista, NomeAlbum from Albuns
where  IdArtista =  3;

select IdAlbum, DataDeLançamento from Albuns
where DataDeLançamento = '1/01/2020';

select IdArtista, IdEstilo from Albuns
where IdEstilo = 2;

select IdAlbum, IdArtista, DataDeLançamento from Albuns
order by DataDeLançamento;

--Usando join
select Artista.Nome, Albuns.NomeAlbum from Artista
inner join Albuns on Artista.IdArtista = 2;

select * from Artista
inner join Albuns on Artista.IdArtista = Albuns.IdArtista
where DataDeLançamento = '1/01/2020';

select * from Albuns order by DataDeLançamento asc;

select  Estilo.NomeEstilo, Artista.Nome from Artista
inner join Albuns on Artista.IdArtista = Albuns.IdArtista
inner join Estilo on Albuns.IdEstilo = Estilo.IdEstilo
where Estilo.IdEstilo = 2;

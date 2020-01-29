-- Cria banco de dados
create database Biblioteca_Tarde;

--Seleciona o Banco que voce vai usar
use Biblioteca_Tarde;

--Criar tabelas
create table Autores (
	IdAutor int primary key identity,
	NomeAutor varchar(200) not null
);

create table Generos (
	IdGeneros int primary key identity,
	Nome varchar(200)
);

create table Livros (
	IdLivros int primary key identity,
	Titulo varchar(255),
	IdAutor int foreign key references Autores(IdAutor),
	IdGenero int foreign key references Generos(IdGeneros)
);

-- Le as tabelas
select * from Generos;
select * from Autores;
select * from Livros;

-- Alterar  Adicionar uma nova coluna 
alter table Generos
add Descricao varchar(255);

-- Alterar tipo de dado
alter table Generos 
alter column Descricao char(100);

-- Alterar Excluir coluna
alter table Generos
drop column Descricao;

-- Excluir Tabela
drop table Generos;

-- Excluir Banco de Dados
drop database -- Nome do Banco 

insert into Autores(NomeAutor)
values ('Machado de Assis'), ('Mauricio de Souza'), ('Xuxa'), ('Pelé'), ('Faustão');

insert into Generos(Nome)
values ('Romance'),('Terror'),('Suspense'),('Comedia'),('Aventura');

insert into Livros (Titulo, IdAutor, IdGenero)
values ('ttt', 5, 5)


update Generos
set Nome = 'Drama'
where IdGeneros = 3;

update Livros
set IdGenero = 3
where IdGenero = 4;

delete from Autores
where IdAutor = 1;

delete from Livros
where IdAutor = 1;
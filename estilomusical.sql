create database Musicas_Tarde;

use Musicas_Tarde;

create table EstilosMusicais (
	IdEstilo int primary key identity,
	NomeEstilo varchar(200)
);

create table Artistas (
	IdArtista int primary key identity,
	
);

select * from EstilosMusicais;
select * from Artistas;

alter table Artistas
drop column NomeArtista;

alter table Artistas
add IdEstilo int foreign key references EstilosMusicais(IdEstilo)
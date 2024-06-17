create database viagens

use viagens

create table destinos(
	id int primary key,
	destino varchar(30) not null,
	atracoes varchar(40) not null,
	custoDiario float not null,
	avaliacao float
)

insert into destinos
(id,destino,atracoes,custoDiario,avaliacao)
values(1,'Paris','Torre Eiffel e Rio Senna',150,4.8)

insert into destinos
(id,destino,atracoes,custoDiario,avaliacao)
values(2,'Paris','Torre Eiffel e outra atividade',120,4.2)

select * from destinos

create table pacotes(
	id int primary key,
	destino varchar(30) not null,
	duracaoDias int not null,
	precoTotal float not null,
	incluso varchar(60)
)

insert into pacotes
(id,destino,duracaoDias,precoTotal,incluso)
values(1,'Aventura na Amazônia',7,1200,'Transporte, Hospedagem e Guias')

select * from pacotes

create table avaliacoes(
	id int primary key,
	destino varchar(30) not null,
	estrela float not null,
	comentario varchar(200)
)

insert into avaliacoes
(id,destino,estrela,comentario)
values(1,'Tóquio',5,'Uma experiência inesquecivel!')

select * from avaliacoes

create table clientes(
	id int primary key,
	nome varchar(30) not null,
	email varchar(50) not null,
	destinoInteresse varchar(30),
)

insert into clientes
(id,nome,email,destinoInteresse)
values(1,'João Silva','joao.silva@example.com','Nova York e Londres')

insert into clientes
(id,nome,email)
values(2,'raphael','raphael@raphae69696996')

select * from clientes

create table reservas(
	id int primary key,
	cliente varchar(30) not null,
	destino varchar(30) not null,
	partida date not null,
	retorno date not null,
	statusDaReserva varchar(15) not null
)

insert into reservas
(id,cliente,destino,partida,retorno,statusDaReserva)
values(1,'Maria Santos','Bali','2024-07-15','2024-07-25','Pendente')

select * from reservas

update pacotes set precoTotal=precoTotal*1.1
where destino='Aventura na Amazônia'

select * from pacotes

update destinos set avaliacao=4.9
where destino='Paris'

update pacotes set duracaoDias=duracaoDias+3
where destino='Aventura na Amazônia'

select * from pacotes

update pacotes set precoTotal=precoTotal*0.85
where destino='Aventura na Amazônia'

insert into avaliacoes
(id,destino,estrela,comentario)
values(2,'Tóquio',4.5,'Lugar muito divertido com uma linda culinaria')

insert into avaliacoes
(id,destino,estrela,comentario)
values(3,'Tóquio',3,'Nunca mais volto, tem que tomar muito cuidado com os espirros')

update clientes set email='novo.email@example.com'
where email='joao.silva@example.com'

update destinos set atracoes = 'Parc Des Princes'
where destino='Paris'

update reservas set statusDaReserva = 'Confirmado'
where cliente='Maria Santos'

update clientes set destinoInteresse = 'Tóquio'
where nome = 'raphael'

update pacotes set destino = 'Aventura na Floresta Amazônica'
where destino = 'Aventura na Amazônia'

delete from destinos
where destino='Paris'

delete from avaliacoes
where destino='Tóquio' and estrela=3.0

delete from reservas
where statusDaReserva='Cancelado'

update destinos set atracoes='Rio Senna e Arco do Triunfo'
where destino='Paris'

delete from clientes
where nome='raphael'

select * from avaliacoes
select * from clientes
select * from destinos
select * from pacotes
select * from reservas

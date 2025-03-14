drop database fechadura;

create database fechadura;

use fechadura;


create table usuario(
 codigo_usuario integer auto_increment primary key,
 nome varchar(50),
 cargo char(1),
 email varchar(40), 
 senha varchar (8), 
 possui_token char(1) default '0',
 estatus char(1) 
);

create table token(
codigo_token  integer auto_increment primary key,
codigo_usuario integer,
numero_token  varchar(20),
estatus_token char(1),
foreign key (codigo_usuario) references usuario(codigo_usuario)
);

create table acesso(
 codigo_acesso integer auto_increment primary key,
 codigo_usuario integer,
 open_close   char(1) default '0',
 datas_hora        datetime,
 foreign key (codigo_usuario) references usuario(codigo_usuario)
);

create table ticket(
codigo_usuario   integer,
codigo_ticket    integer auto_increment primary key,
descricao        varchar(254),
progresso        varchar(20),
solucao          varchar(254),
estatus_ticket   char(1),
foreign key (codigo_usuario) references usuario(codigo_usuario)
);

select * from usuario;
select * from token;
select * from ticket;
select * from acesso;



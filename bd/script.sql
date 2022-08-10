-- Loja EletroTec - A sua Loja de Eletrônicos

create database if not exists eletrotec;  
use eletrotec;

create or replace table produto(
    id int primary key auto_increment,
    nome varchar(250) not null,
    codproduto int not null,
    quantidade int not null,
    created_at TIMESTAMP not null default CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

alter table produto add column foto longtext not null default "imagens\\avatar.png" after nome;

create or replace table login(
    id int primary key auto_increment,
    nome varchar(250) not null,
    email varchar(250) not null unique,
    senha varchar(255) not null,
    created_at TIMESTAMP not null default CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

alter table produto change column foto foto longtext not null default "imagens\\avatar.png";

insert into login(email, senha) values ('admin_estoque@loja.com.br', md5('admin_estoque@123'));
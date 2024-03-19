CREATE DATABASE festainfantil1;

USE `festainfantil1`;

CREATE TABLE `clientes` (
	`id_cliente` int(45) auto_increment not null,
	`nome` varchar(75) not null,
    `cpf` varchar(11) not null,
    `telefone` int(11) not null,
    primary key (`id_cliente`)
);

-- DROP TABLE `clientes`; 

INSERT INTO `clientes` (nome, cpf, telefone) VALUES 
('Pedro',123456789,123456789), 
('Carlos',123456789,123456789), 
('Andre',123456789,123456789), 
('Anna',123456789,123456789),
('Flavia',123456789,123456789);

SELECT * FROM `clientes`;

CREATE TABLE `endereço` (
	`id_endereco` int auto_increment not null,
	`rua` varchar(75) not null,
    `bairro` varchar(75) not null,
    `cep` int(75) not null,
    `cidade` varchar(75) not null,
    primary key (`id_endereco`)
);

INSERT INTO `endereço` (rua, bairro, cep, cidade) VALUES 
('RUA DOIS', 'Planalto',1234567, 'Palmas'), 
('RUA TRÊS', 'Planalto',1234567, 'Palmas'), 
('RUA UM', 'Planalto',1234567, 'Palmas'), 
( 'RUA B', 'Planalto',1234567, 'Palmas'),
('RUA QUATRO', 'Planalto',1234567, 'Palmas');

SELECT * FROM `endereço`;

CREATE TABLE `tema` (
	`id_tema` int(45) auto_increment not null,
	`temas` varchar(50) not null,
    `valor` varchar(50) not null,
    primary key (`id_tema`)
);

INSERT INTO `tema`(temas, valor) VALUES 
('Herois', 'R$300'),
('Série/Filmes/Desenhos','$450'),
('Jogos', 'R$350'),
('Animais', 'R$300');

SELECT * FROM `tema`;

CREATE TABLE `toalha_mesa` (
	`id_toalha_mesa` int(45) auto_increment not null,
	`cor` varchar(50) not null,
    primary key (`id_toalha_mesa`)
);

INSERT INTO `toalha_mesa`(cor) VALUES 
('Vermelha'),
('Azul'),
('Amarelo'),
('Verde');

SELECT * FROM `toalha_mesa`;

CREATE TABLE `itens` (
	`id_itens` int(45) auto_increment not null,
	`itens` varchar(60) not null,
    `valor` varchar(50) not null,
    `id_tema` int(45) not null,
    primary key (`id_itens`),
    foreign key (`id_tema`) REFERENCES tema(id_tema)
);

INSERT INTO `itens`(itens, valor, id_tema) VALUES 
('Mascaras', 'R$30', 1),
('Action Figures', 'R$80', 1),
('Filme', 'R$30', 2),
('Póster', 'R$15', 2),
('Brinquedos', 'R$25', 3),
('Cardenos', 'R$30', 3),
('Pula-Pula', 'R$100', 4),
('Pipoqueira', 'R$75', 4);

SELECT * FROM `itens`;

CREATE TABLE `festa` (
	`id_festa` int(45) auto_increment not null,
    `id_tema` int(45) not null,
    `id_cliente` int(45) not null,
    `id_endereco` int not null,
    `id_toalha_mesa` int(45) not null,
	`data` date not null,
    `horaIn` time not null,
    `horaFi` time not null,
    primary key (`id_festa`),
    foreign key (`id_tema`) REFERENCES tema(id_tema),
    foreign key (`id_cliente`) REFERENCES clientes(id_cliente),
    foreign key (`id_endereco`) REFERENCES endereço(id_endereco),
    foreign key (`id_toalha_mesa`) REFERENCES toalha_mesa(id_toalha_mesa)
);

-- DROP TABLE `festa`; 

INSERT INTO `festa` (data, horaIn, horaFi, id_tema, id_cliente, id_endereco, id_toalha_mesa) VALUES 
(20240620, 220000, 00, 1, 1, 1, 3),
(20240605, 190000, 00, 2, 2, 2, 2),
(20240402, 220000, 010000, 4, 3, 3, 1),
(20240705, 180000, 200000, 3, 4, 4, 4),
(20240810, 180000, 220000, 2, 5, 5, 4);

SELECT * FROM `festa`;

CREATE TABLE `ItensFesta` (
    id_ItensFesta INT AUTO_INCREMENT not null,
    id_festa INT not null,
    id_itens INT not null,
    quantidade int not null,
    primary key (`id_ItensFesta`),
    FOREIGN KEY (`id_festa`) REFERENCES festa(id_festa),
    FOREIGN KEY (`id_itens`) REFERENCES itens(id_itens)
);

/*
ALTER TABLE  ItensFesta
ADD quantidade int not null;
*/

INSERT INTO `ItensFesta` (id_festa, id_itens, quantidade) VALUES 
(1, 1, 20),
(2, 3, 1),
(2, 4, 10),
(3, 6, 5),
(5, 7, 2),
(5, 8, 2);

SELECT * FROM `ItensFesta`;

CREATE TABLE `Total` (
    id_Total INT AUTO_INCREMENT not null,
    id_festa INT not null,
    id_ItensFesta INT,
    Total varchar(60) not null,
    primary key (`id_Total`),
    FOREIGN KEY (`id_festa`) REFERENCES festa(id_festa),
    FOREIGN KEY (`id_ItensFesta`) REFERENCES ItensFesta(id_ItensFesta)
);

INSERT INTO `Total` (id_festa, id_ItensFesta, Total) VALUES 
(1, 1, 'R$900'),
(2, 2, 'R$650'),
(3, 3, 'R$450'),
(4, NULL, 'R$350'),
(5, 5, 'R$500');

SELECT * FROM `Total`;


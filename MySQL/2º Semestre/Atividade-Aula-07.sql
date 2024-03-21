-- Aluno: Hallan Christian Morais da Cruz

CREATE DATABASE Loja;

Use Loja;

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL auto_increment,
  `nome` varchar(45) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `fornecedor` (
  `idfornecedor` int(11) NOT NULL auto_increment,
  `nome` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idfornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `funcionario` (
  `idfuncionario` int(11) NOT NULL auto_increment,
  `nome` varchar(45) DEFAULT NULL,
  `salario` float DEFAULT NULL,
  PRIMARY KEY (`idfuncionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `produto` (
  `idproduto` int(11) NOT NULL auto_increment,
  `nome` varchar(45) DEFAULT NULL,
  `precocompra` float DEFAULT NULL,
  `precovenda` float DEFAULT NULL,
  `quantestoque` int(11) DEFAULT NULL,
  `unidade` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idproduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `vendedor` (
  `idvendedor` int(11) NOT NULL auto_increment,
  `nome` varchar(45) DEFAULT NULL,
  `salario` float DEFAULT NULL,
  `comissaomes` float DEFAULT NULL,
  PRIMARY KEY (`idvendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `venda` (
  `idvenda` int(11) NOT NULL AUTO_INCREMENT,
  `produto` int(11) DEFAULT NULL,
  `vendedor` int(11) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `quantidade` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`idvenda`),
  KEY `prodvenda_idx` (`produto`),
  KEY `vendvenda_idx` (`vendedor`),
  KEY `clivenda_idx` (`cliente`),
  CONSTRAINT `clivenda` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `prodvenda` FOREIGN KEY (`produto`) REFERENCES `produto` (`idproduto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `vendvenda` FOREIGN KEY (`vendedor`) REFERENCES `vendedor` (`idvendedor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

CREATE TABLE `compra` (
  `idcompra` int(11) NOT NULL auto_increment,
  `funcionario` int(11) DEFAULT NULL,
  `fornecedor` int(11) DEFAULT NULL,
  `produto` int(11) DEFAULT NULL,
  `quantidade` float DEFAULT NULL,
  PRIMARY KEY (`idcompra`),
  KEY `funccompra_idx` (`funcionario`),
  KEY `forncompra_idx` (`fornecedor`),
  KEY `prodcompra_idx` (`produto`),
  CONSTRAINT `forncompra` FOREIGN KEY (`fornecedor`) REFERENCES `fornecedor` (`idfornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `funccompra` FOREIGN KEY (`funcionario`) REFERENCES `funcionario` (`idfuncionario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `prodcompra` FOREIGN KEY (`produto`) REFERENCES `produto` (`idproduto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;	

INSERT INTO cliente (nome, idade, cidade)
VALUES ('Ana Maria', 28, 'Palmas'), 
	   ('João Santos', 35, 'Araguaína'), 
	   ('Anacleto', 42, 'Gurupi'), 
	   ('Pedro Souza', 31, 'Porto Nacional'), 
	   ('Ananias', 29, 'Paraíso do Tocantins');

INSERT INTO fornecedor (nome, email)
VALUES ('Nestle', 'fornecedorA@example.com'),
       ('Verde Vivo', 'fornecedorB@example.com'),
       ('Papelaria Premium', 'fornecedorC@example.com'),
       ('Pão da Hora', 'fornecedorD@example.com'),
       ('Piracanjuba', 'fornecedorE@example.com');

INSERT INTO produto (nome, precocompra, precovenda, quantestoque, unidade)
VALUES ('Smartphone', 50.00, 80.00, 100, 'un'),
       ('Farinha', 30.00, 60.00, 200, 'kg'),
       ('Caderno de Anotações', 20.00, 40.00, 150, 'un'),
       ('Pinga', 40.00, 70.00, 120, 'kg'),
       ('Caneta Esferográfica', 60.00, 100.00, 80, 'un');

INSERT INTO vendedor (nome, salario, comissaomes)
VALUES ('João', 2000.00, 0.03),
       ('Maria Oliveira', 2200.00, 0.035),
       ('Joana', 2400.00, 0.04),
       ('Ana Costa', 2600.00, 0.045),
       ('Carlos Almeida', 2800.00, 0.05);

INSERT INTO funcionario (nome, salario)
VALUES ('Mário', 2500.00),
       ('Mariana', 2800.00),
       ('Luiza Pereira ', 3000.00),
       ('Marcos Oliveira', 3200.00),
       ('Isabela Costa', 3500.00);
       
INSERT INTO venda (produto, vendedor, cliente, quantidade, total)
VALUES (1, 1, 1, 200, 200.00),
       (2, 2, 2, 1.5, 90.00),
       (3, 3, 3, 3.0, 120.00),
       (4, 4, 4, 2.0, 140.00),
       (5, 5, 5, 1.0, 100.00);

INSERT INTO compra (funcionario, fornecedor, produto, quantidade)
VALUES (1, 1, 1, 100),
       (2, 2, 2, 150),
       (3, 3, 3, 200),
       (4, 4, 4, 120),
       (5, 5, 5, 80);

-- 1 - Listar todos os clientes de Palmas
SELECT nome, cidade FROM cliente WHERE cidade = 'Palmas';

-- 2 - Listar todos os clientes com mais de 25 anos
SELECT nome, idade FROM cliente WHERE idade > 25;

-- 3 - Listar todos os clientes entre 25 e 35 anos
SELECT nome, idade FROM cliente WHERE idade BETWEEN 25 AND 35; 

-- 4 - Listar todos os vendedores com salário maior que 1200
SELECT nome, salario FROM vendedor WHERE salario >= 1200;

-- 5 - Listar todos os funcionários com salário entre 1250 e 1350
SELECT nome, salario FROM vendedor WHERE salario BETWEEN 1250 AND 1350;

-- 6 - Listar o nome dos produtos e o preço de venda de cada um
SELECT nome, precovenda FROM produto;

-- 7 - Listar o nome dos produtos que tem mais de 5 em estoque
SELECT nome, quantestoque FROM produto WHERE quantestoque >= 5;

-- 8 - Listar todos os produtos vendidos “no quilo”
SELECT nome, unidade FROM produto WHERE unidade = 'kg';

-- 9 - Listar o nome dos produtos e o lucro unitário de cada um
SELECT produto.nome, (produto.precovenda - produto.precocompra) AS lucro FROM produto;

-- 10 - Listar todos os fornecedores de quem a empresa já comprou
SELECT fornecedor.nome FROM fornecedor, compra WHERE fornecedor.idfornecedor = compra.fornecedor;

-- 11 - Listar todos os funcionários que já realizaram alguma compra
SELECT funcionario.nome FROM funcionario, compra WHERE funcionario.idfuncionario = compra.funcionario;

-- 12 - Listar todos os clientes para quem a empresa já vendeu
SELECT cliente.nome FROM cliente, venda WHERE cliente.idcliente = venda.cliente;

-- 13 - Listar todos os vendedores que já realizaram alguma venda
SELECT vendedor.nome FROM venda, vendedor WHERE vendedor.idvendedor = venda.vendedor;

-- 14 - Listar todos os produtos que já foram vendidos
SELECT produto.nome FROM produto, venda WHERE produto.idproduto = venda.produto;

-- 15 - Listar todos os produtos que a empresa já comprou
SELECT produto.nome FROM produto, compra WHERE produto.idproduto = compra.produto;

-- 16 - Listar todos as vendas nas quais a quantidade vendida era maior que a quantidade em estoque
SELECT venda.produto, venda.quantidade FROM venda, produto WHERE venda.quantidade >= produto.quantestoque AND produto.idproduto = venda.produto;

-- 17 - Listar sem repetição todos os fornecedores de quem o funcionário Mário já fez compras
SELECT funcionario.nome, fornecedor.nome FROM funcionario, fornecedor, compra WHERE fornecedor.idfornecedor = compra.fornecedor AND funcionario.idfuncionario = compra.funcionario AND funcionario.nome = 'Mário';

-- 18 - Listar sem repetição todos os produtos que a funcionária Mariana já comprou
SELECT funcionario.nome, produto.nome FROM produto, funcionario, compra WHERE funcionario.idfuncionario = compra.funcionario AND produto.idproduto = compra.produto AND funcionario.nome = 'Mariana';

-- 19 - Listar sem repetição todos os produtos comprados do fornecedor Nestle
SELECT fornecedor.nome, produto.nome FROM fornecedor, compra, produto WHERE fornecedor.idfornecedor = compra.fornecedor AND produto.idproduto = compra.produto AND fornecedor.nome = 'Nestle';

-- 20 - Listar sem repetição todos os fornecedores que já venderam o produto “farinha”
SELECT fornecedor.nome, produto.nome FROM fornecedor, produto, venda, compra WHERE fornecedor.idfornecedor = compra.fornecedor AND produto.idproduto = compra.produto AND produto.idproduto = venda.produto AND produto.nome = 'Farinha';

-- 21 - Listar sem repetição todos os produtos comprados pelo cliente Ananias
SELECT produto.nome, cliente.nome FROM produto, cliente, compra, venda WHERE produto.idproduto = compra.produto AND produto.idproduto = venda.produto AND cliente.idcliente = venda.cliente AND cliente.nome = 'Ananias';

-- 22 - Listar sem repetição todos os clientes que já compraram o produto “pinga”
SELECT cliente.nome, produto.nome FROM cliente, produto,compra, venda WHERE produto.idproduto = compra.produto AND produto.idproduto = venda.produto AND cliente.idcliente = venda.cliente AND produto.nome = 'pinga';

-- 23 - Listar sem repetição todos os clientes atendidos pelo vendedor João
SELECT cliente.nome, vendedor.nome FROM cliente, vendedor, venda WHERE cliente.idcliente = venda.cliente AND vendedor.idvendedor = venda.vendedor AND vendedor.nome = 'João';

-- 24 - Listar sem repetição todos os vendedores que já atenderam a cliente Ana Maria
SELECT vendedor.nome, cliente.nome FROM vendedor, cliente, venda WHERE cliente.idcliente = venda.cliente AND vendedor.idvendedor = venda.vendedor AND cliente.nome = 'Ana Maria';

-- 25 - Listar sem repetição o preço de venda e o nome do produto de todos os produtos comprados pelo cliente Anacleto
SELECT cliente.nome, produto.nome, produto.precovenda FROM cliente, produto, venda WHERE cliente.idcliente = venda.cliente AND produto.idproduto = venda.produto AND cliente.nome = 'Anacleto';

-- 26 - Listar sem repetição o nome do produto e a quantidade em estoque de todos os produtos vendidos pela vendedora Joana
SELECT produto.nome, produto.quantestoque, vendedor.nome FROM produto, venda, vendedor WHERE produto.idproduto = venda.produto AND vendedor.idvendedor = venda.vendedor AND vendedor.nome = 'Joana';

-- 27 - Todos os clientes que já compraram produtos do fornecedor “Pão da Hora”
SELECT cliente.nome, produto.nome, fornecedor.nome FROM cliente, produto, fornecedor, compra, venda WHERE produto.idproduto = venda.produto AND produto.idproduto = compra.produto AND cliente.idcliente = venda.cliente AND fornecedor.idfornecedor = compra.fornecedor AND fornecedor.nome = 'Pão da Hora';

-- 28 - Todos os vendedores que venderam produtos do fornecedor “Piracanjuba”
SELECT fornecedor.nome, produto.nome, vendedor.nome FROM fornecedor, produto, vendedor, compra, venda WHERE produto.idproduto = venda.produto AND produto.idproduto = compra.produto AND fornecedor.idfornecedor = compra.fornecedor AND vendedor.idvendedor = venda.vendedor AND fornecedor.nome = 'Piracanjuba';

-- 29 - Todos os clientes para quem já foi vendido um produto comprado pelo funcionário Mário
SELECT cliente.nome, produto.nome, funcionario.nome FROM cliente, produto, funcionario, venda, compra WHERE produto.idproduto = venda.produto AND produto.idproduto = compra.produto AND cliente.idcliente = venda.cliente AND funcionario.idfuncionario = compra.funcionario AND funcionario.nome = 'Mário';

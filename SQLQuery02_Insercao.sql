USE loja;
GO

--Inserindo usuarios
INSERT INTO Usuarios (NomeUsuario, SenhaUsuario)
VALUES ('op1', 'op1'),
	('op2', 'op2'),
	('op3', 'op3'),
	('op4', 'op4');
GO

--Inserindo produtos
INSERT INTO Produtos (NomeProduto, QuantidadeProduto, PrecoVendaBase)
VALUES ('Banana', 100, 5.49),
	('Laranja', 200, 2.99),
	('Manga', 300, 4.49),
	('Mortadela', 50, 8.50),
	('Queijo Coalho', 75, 29.99);
GO

--Inserindo pessoas
INSERT INTO Pessoas (IDPessoa, NomePessoa, Email, Telefone, Logradouro, Cidade, Estado)
VALUES (NEXT VALUE FOR Sequencia_IDPessoa, 'Francinaldo Souza', 'lee.frankcinaldo@imail.com', '12458956237', 'Rua da areia, 105', 'Joao Pessoa', 'PB'),
	(NEXT VALUE FOR Sequencia_IDPessoa, 'Wilson junior', 'wilson.ar@sesmt.com', '11955544555', 'Rua dos coelhos, 300', 'Coelhos', 'PE'),
	(NEXT VALUE FOR Sequencia_IDPessoa, 'Feira Sao Jose', 'van_coteminas@email.com', '45123974455', 'BR 230, KM 85', 'Joao Pessoa', 'PB'),
	(NEXT VALUE FOR Sequencia_IDPessoa, 'Panificadora Oya', 'pan_oya@email.com', '98653245893', 'Av cidade da jurema, S/N', 'Arruanda', 'AM');
GO

--Inserindo CPF de pessoas fisicas
INSERT INTO PessoasFisicas (Pessoas_IDPessoa, CPF)
VALUES (1, '12121313910'),
	(2, '54335499206');
GO

--Inserindo CNPJ de pessoas juridicas
INSERT INTO PessoasJuridicas (Pessoas_IDPessoa, CNPJ)
VALUES (3, '55884466000001'),
	(4, '12568905100001');
GO

--Inserindo movimentacao
INSERT INTO Movimentos (Usuarios_IDUsuario, Pessoas_IDPessoa, Produtos_IDProduto, Tipo, QuantidadeMovimentado, PrecoUnitario)
VALUES (4, 3, 2, 'E', 27, 2.99),
	(4, 1, 5, 'S', 3, 29.99),
	(4, 3, 1, 'E', 15, 5.49),
	(1, 2, 4, 'S', 5, 8.50),
	(1, 1, 3, 'S', 2, 4.49),
	(1, 4, 5, 'E', 10, 29.99),
	(2, 2, 2, 'S', 15, 2.99);
GO

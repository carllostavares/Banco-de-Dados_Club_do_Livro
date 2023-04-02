CREATE SCHEMA CLUB_LIVRO; 

CREATE TABLE LIVROS (
ID_LIVRO INT NOT NULL,
NOME_LIVRO VARCHAR(100) NOT NULL,
AUTORTA VARCHAR(100) NOT NULL,
EDITORA VARCHAR(100) NOT NULL,     
CATEGORIA VARCHAR(100) NOT NULL,
PREÇO DECIMAL (6,2) NOT NULL,

PRIMARY KEY (ID_LIVRO)
);

CREATE TABLE ESTOQUE (
ID_LIVRO INT NOT NULL,
QTD_ESTOQUE INT NOT NULL,

PRIMARY KEY(ID_LIVRO),
CONSTRAINT FK_ESTOQUE_LIVROS/*aqui é o nome que vou usar */
FOREIGN KEY (ID_LIVRO) 
REFERENCES LIVROS (ID_LIVRO) /*aqui ele fala que o id_livro(FK) é o mesmo id-livro da tabela livro. */
ON DELETE NO ACTION
ON UPDATE NO ACTION
);

/*ALTER TABLE ESTOQUE ADD CONSTRAINT CE_ESTOQUE_LIVROS
FOREIGN KEY (ID_LIVRO)
REFERENCES LIVROS (ID_LIVRO)
ON DELETE NO ACTION
ON UPDATE NO ACTION; --esse codigo modefica a tabela ESTOQUE, adicionando a chave estrangéira, caso ela nao tivesse.*/

CREATE TABLE VENDAS (
ID_PEDIDO INT NOT NULL,
ID_VENDEDOR INT NOT NULL,
ID_LIVRO INT NOT NULL,
ID_VENDA INT NOT NULL AUTO_INCREMENT,
DATA_VENDA INT NOT NULL,

PRIMARY KEY (ID_VENDEDOR,ID_PEDIDO),
CONSTRAINT FK_VENDAS_LIVROS
FOREIGN KEY (ID_LIVRO)
REFERENCES LIVROS (ID_LIVRO)
ON DELETE NO ACTION
ON UPDATE NO ACTION,

CONSTRAINT FK_VENDAS_VENDEDORES
FOREIGN KEY (ID_VENDEDOR)
REFERENCES VENDEDORES (ID_VENDEDOR)
ON DELETE NO ACTION
ON UPDATE NO ACTION
);

CREATE TABLE VENDEDORES (
ID_VENDEDOR INT NOT NULL,
NOME_VENDEDOR VARCHAR(150) NOT NULL,

PRIMARY KEY(ID_VENDEDOR)
);

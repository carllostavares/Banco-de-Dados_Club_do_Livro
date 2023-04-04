SET FOREIGN_KEY_CHECKS = 0; /*desativar a relação das tabelas, desativando as chaves estrangeiras - assim podemos adicionar os dados*/

INSERT INTO LIVROS(NOME_LIVRO,AUTORTA,EDITORA,CATEGORIA,PREÇO) VALUES( 
"O Senhor dos Aneis","Rick Riordan",
"Intríseca",
"Aventura",
100.55);

INSERT INTO LIVROS(NOME_LIVRO,AUTORIA,EDITORA,CATEGORIA,PREÇO) VALUES
(    'A Volta ao Mundo em 80 Dias',    'Júlio Verne',         'Principis',     'Aventura',    21.99),
(    'O Cortiço',                     'Aluísio de Azevedo',  'Panda Books',   'Romance',    47.8),
(    'Dom Casmurro',                     'Machado de Assis',    'Via Leitura',   'Romance',    19.90),
(    'Memórias Póstumas de Brás Cubas',    'Machado de Assis',    'Antofágica',    'Romance',    45),
(    'Quincas Borba',                 'Machado de Assis',    'L&PM Editores', 'Romance',    48.5),
(    'Ícaro',                             'Gabriel Pedrosa',     'Ateliê',          'Poesia',    36),
(    'Os Lusíadas',                     'Luís Vaz de Camões',  'Montecristo',   'Poesia',    18.79),
(    'Outros Jeitos de Usar a Boca',    'Rupi Kaur',          'Planeta',          'Poesia',    34.8);


INSERT INTO VENDEDORES 
VALUES
(1,'Paula Rabelo'),
(2,'Juliana Macedo'),
(3,'Roberto Barros'),
(4,'Barbara Jales');

INSERT INTO VENDAS(ID_PEDIDO,ID_VENDEDOR, ID_LIVRO, ID_VENDA,DATA_VENDA)
VALUES 
(1, 3, 7, 1, '2020-11-02'),
(2, 4, 8, 2, '2020-11-02'),
(3, 4, 4, 3, '2020-11-02'),
(4, 1, 7, 1, '2020-11-03'),
(5, 1, 6, 3, '2020-11-03'),
(6, 1, 9, 2, '2020-11-04'),
(7, 4, 1, 3, '2020-11-04'),
(8, 1, 5, 2, '2020-11-05'),
(9, 1, 2, 1, '2020-11-05'),
(10, 3, 8, 2, '2020-11-11'),
(11, 1, 1, 4, '2020-11-11'),
(12, 2, 1, 10, '2020-11-11'),
(13, 1, 2, 5, '2020-11-18'),
(14, 2, 4, 1, '2020-11-25'),
(15, 3, 3, 2,'2021-01-05'),
(16, 4, 3, 1, '2021-01-05'),
(17, 4, 4, 3, '2021-01-06'),
(18, 2, 1, 2, '2021-01-06');

INSERT INTO ESTOQUE 
VALUES
(1,  7),
(2,  10),
(3,  2),
(4,  4),
(5, 5),
(6, 3),
(7, 3),
(8, 3),
(9, 3);

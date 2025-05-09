CREATE DATABASE cadastro;

USE cadastro;

CREATE TABLE pessoa(
	idpessoa INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cpf VARCHAR(15),
    email VARCHAR(50)
    );

CREATE TABLE endereco(
	idendereco INTEGER PRIMARY KEY AUTO_INCREMENT,
	cep VARCHAR(14),
    logradouro VARCHAR(50),
    cidade VARCHAR(50),
    estado CHAR(2),
    id_pessoa INTEGER,
    FOREIGN KEY(id_pessoa) REFERENCES pessoa(idpessoa)
    );
    
    
    CREATE TABLE telefone(
    idtelefone INTEGER PRIMARY KEY AUTO_INCREMENT,
     telefone VARCHAR(9),
     ddd VARCHAR(3),
     id_pessoa INTEGER,
      FOREIGN KEY(id_pessoa) REFERENCES pessoa(idpessoa)
     );
     

INSERT INTO pessoa (nome, CPF, email) VALUES
('Ana Silva', '123.456.789-01', 'ana.silva@email.com'),
('Bruno Oliveira', '987.654.321-02', 'bruno.oliveira@email.com'),
('Carla Souza', '111.222.333-03', 'carla.souza@email.com'),
('Daniel Pereira', '444.555.666-04', 'daniel.pereira@email.com');


INSERT INTO endereco (CEP, logradouro, cidade, estado, id_pessoa) VALUES
('70000-000', 'Eixo Monumental', 'Brasília', 'DF', 1),
('30000-000', 'Avenida Afonso Pena', 'Belo Horizonte', 'MG', 2),
(NULL, 'Rua das Flores', 'Curitiba', 'PR', 3),
('90000-000', NULL, 'Porto Alegre', 'RS', 4);


INSERT INTO telefone (telefone, ddd, id_pessoa) VALUES
('9999-9999', '61', 1),
('8888-8888', '31', 2),
('7777-7777', '41', 3),
(NULL, '51', 4),
('6666-6666', '51', 4);

SELECT * FROM pessoa;
SELECT * FROM endereco;
SELECT * FROM telefone;

SELECT * FROM pessoa WHERE nome LIKE "A%"; -- COMEÇA COM A LETRA A
SELECT * FROM pessoa WHERE nome LIKE "%RA"; -- TERMINA COM RA
SELECT * FROM pessoa WHERE nome LIKE "%SILVA"; -- TUDO QUE POSSUI SILVA 
SELECT * FROM telefone WHERE telefone IS NULL; -- "=" para um valor existente ja, usando o is se procura um valor nulo dentro de alguma tabela ja
SELECT * FROM telefone WHERE telefone IS NOT NULL;

SELECT * FROM pessoa  ORDER BY nome; -- sintaxe normal 
SELECT * FROM pessoa  ORDER BY nome ASC; -- menor valor ao maior valor
SELECT * FROM pessoa  ORDER BY nome DESC; -- do maior para o menor  

SELECT * FROM telefone WHERE telefone IS NOT NULL AND ddd = "61"; -- SOMENTE ESSE TIPÓ DE DDD
SELECT * FROM telefone WHERE telefone IS NOT NULL OR ddd = "61"; -- ESSE TIPO DE DDD E OUTROS JUNTOS
UPDATE telefone SET telefone = '542263322' WHERE idtelefone = 4;
   
   

   
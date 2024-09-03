/*Programação de Banco De Dados
Funções e operadores de Strings e expressões
*/

-- 01. Exibindo apenas o Olá mundo
SELECT "Olá Mundo";

-- 01.1 A função CONCAT realiza a concatenação de três strings
SELECT CONCAT("Olá", "2024", "mundo");

-- 01.2 A Função LOWER converte as letras maiúsculas em letras minúsculas
SELECT LOWER("Converte TUDO para maiúsculas");

-- 01.3 A função LPAD (left pad) acrescenta zedros (terceiro argumento) à string "123"alter
SELECT LPAD('123', 1, 0);

-- 01. 4 Exibe strings com espaços nas extremidades
SELECT ' string com espaços na extremidades ';

-- 01.5 A funçaõ TRIM remove os espaços em branco das extremidades da string
SELECT TRIM(' string com espaços na extremidades ');

-- 01.6 A função REGEXP_SUBSTR procura um determinado padrão (segundo argumento) numa string informada (primeiro argumento)
SELECT REGEXP_SUBSTR('Tem um número 12 no meio desta string', '\\d+)');

-- 02. Criando nova tabela

CREATE TABLE clientes_experimentos (
id INT PRIMARY KEY, 
nome_completo VARCHAR(255),
email VARCHAR(255),
telefone VARCHAR(20)
);

-- 02.1 carga de dados
INSERT INTO clientes_experimentos (id, nome_completo, email, telefone)
VALUES
	(1, 'João Pedro Silva', 'joao.pedro@gmail.com', '(11) 1234-5678'),
    (2, 'Maria Luiza Oliveira', 'maria.luiza@gmail.com', '(21) 9876-5432'),
    (3, 'Carlos Eduardo Santos', 'carlos.eduardo@gmail.com', '(31) 1111-2222'),
    (4, 'Ana Beatriz Costa', 'ana.beatriz@gmail.com', '(41) 3333-4444'),
    (5, 'Luís Felipe Pereira', 'luis.felipe@gmail.com', '(51) 5555-6666'),
    (6, 'Rafaela Cristina Souza', 'rafaela.cristina@gmail.com', '(61) 7777-8888'),
    (7, 'Pedro Henrique Almeida', 'pedro.henrique@gmail.com', '(71) 9999-0000'),
    (8, 'Gabriela Oliveira Lima', 'gabriela.oliveira@gmail.com', '(81) 1234-5678'),
    (9, 'Felipe Augusto Rocha', 'felipe.augusto@gmail.com', '(91) 9876-5432'),
    (10, 'Isabela Cristina Ferreira', 'isabela.cristina@gmail.com', '(10) 1111-2222'),
    (11, 'Chico Buarque', 'chico.buarque@gmail.com', '(11) 1234-5878'),
    (12, 'Silva Buarque', 'silva.buarque@gmail.com', '(21) 9876-5432'),
    (13, 'Eduardo Bueno', 'eduardo.bueno@gmail.com', '(31) 1111-2222'),
    (14, 'Mestre Sprinter', 'mestre.sprinter@gmail.com', '(41) 3333-4444'),
    (15, 'Dr. Coorper', 'dr.coorper@gmail.com', '(51) 5555-6666');
    
select * from clientes_experimentos;
    
-- Consultando registros usando filtro wherre e expressão like
SELECT * from clientes_experimentos where nome_completo LIKE 'Dr.%';
SELECT * from clientes_experimentos where nome_completo LIKE 'ana%';



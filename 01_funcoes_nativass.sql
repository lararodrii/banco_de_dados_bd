/*Programação de Banco De Dados
Funções Nativas do Banco MySQL
*/
-- 1. Criando tabela medicoes_experimento
CREATE TABLE medicoes_experimento (
repeticao INT,
valor_medido DECIMAL(10,4),
sujeito CHAR(1)
);
-- Carga de dados
INSERT INTO medicoes_experimento (repeticao, valor_medido) VALUES
(1, 12.3454),
(2, 12.2354),
(3, 131354),
(4, 12.1767),
(5, 11.2827),
(6, 12.3849);

-- 2. Aplicando função para arrendondamento de valores
select * from medicoes_experimento;

SELECT repeticao, ROUND(valor_medido) FROM medicoes_experimento;

-- 2.1 Aplicando função de agregação , exibindo media dos valores de uma coluna(valor_medido)
SELECT AVG(valor_medido) FROM medicoes_experimento;

SELECT sujeito, AVG(valor_medido) FROM medicoes_experimento GROUP BY sujeito;

insert into medicoes_experimento (repeticao, valor_medido, sujeito) values
(1, 12.3454, 'A'),
(2, 12.2354, 'A'),
(3, 13.1354, 'A'),
(4, 12.1767, 'A'),
(5, 11.2827, 'A'),
(6, 12.3849, 'A'),
(1, 13.3454, 'B'),
(2, 13.2354, 'B'),
(3, 14.1454, 'B'),
(4, 13.1567, 'B'),
(5, 12.2627, 'B'),
(6, 13.5649, 'B');

-- 2.2 Apague a tabela
drop table medicoes_experimento ;

-- 2.3 Criando tabela medicoes_experimento
CREATE TABLE medicoes_experimento (
repeticao INT,
valor_medido DECIMAL,
sujeito CHAR(1)
);
-- 2.4 Consultando registros da tabela
select * from medicoes_experimento;

-- 2.5 Consultando registros agrupados com função de agregação 
SELECT sujeito, AVG(valor_medido) FROM medicoes_experimento GROUP BY sujeito;


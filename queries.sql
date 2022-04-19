/*QUERY 1*/
CREATE TABLE IF NOT EXISTS produtos(
  id BIGSERIAL CONSTRAINT id_produtos PRIMARY KEY,
  nome VARCHAR(128) UNIQUE NOT NULL,
  categoria VARCHAR(128) NOT NULL,
  price NUMERIC(7,2) NOT NULL
);

/*QUERY 2*/
ALTER TABLE produtos RENAME price TO preco;

/*QUERY 3*/
INSERT INTO
  produtos(nome, categoria, preco)
VALUES
  ('Geladeira', 'Eletro', 2997.00),
  ('Micro-ondas', 'eletro', 499.99),
  ('Fogão', 'eletro', 489.00),
  ('Lava-louças', 'Eletro', 1899.00),
  ('Maquina de Lavar', 'Eletro', 3959.00),
  ('Notebook', 'Informática', 6999.00),
  ('Mouse', 'Informática', 89.90),
  ('Teclado', 'Informática', 299.00),
  ('Impressora', 'Informática', 1129.90),
  ('Monitor 4k', 'Informática', 2999.00),
  ('Modem', 'Informática', 199.90),
  ('Headset', 'Informática', 329.99),
  ('Webcam', 'Informática', 249.90),
  ('Secador de cabelo', 'Eletro', 97.00),
  ('Chapinha', 'eletro', 59.90),
  ('Quadro floral', 'Decoração', 199.00),
  ('Vaso de cerâmica', 'Decoração', 159.00),
  ('Luminária de mesa', 'Decoração', 299.00),
  ('Quadro listrado', 'decoração', 199.00),
  ('Quadro xadrez', 'decoração', 199.00),
  ('Nobreak', 'Informática', 2199.00),
  ('Tablet', 'Informática', 697.90),
  ('Estante de livros', 'Moveis', 299.00),
  ('Sofá', 'moveis', 1999.00),
  ('Mesa', 'Moveis', 997.90),
  ('Guarda-roupa', 'moveis', 799.99),
  ('Cama de solteiro', 'Moveis', 699.00),
  ('Cama de casal', 'moveis', 1699.00),
  ('Cama de casal King', 'Moveis', 2799.00),
  ('Televisão 24"', 'Eletro', 1009.00),
  ('Televisão 32"', 'Eletro', 1809.00),
  ('Televisão 42"', 'Eletro', 2209.00),
  ('Televisão 52"', 'Eletro', 2999.00),
  ('Mesa de centro', 'Moveis', 597.90),
  ('Guarda-roupa pequeno', 'Moveis', 299.00),
  ('Mesa de cabeceira', 'Moveis', 199.00),
  ('Mouse Gamer', 'informática', 289.90),
  ('Teclado Gamer', 'informática', 289.90),
  ('Mousepad', 'informática', 89.90),
  ('Cadeira de escritório', 'moveis', 699.00),
  ('Cadeira de madeira', 'moveis', 98.00),
  ('Sapateira', 'Moveis', 199.90),
  ('Escrivaninha', 'Moveis', 499.00)
;

/*QUERY 4*/
DELETE FROM produtos WHERE nome = 'Webcam' RETURNING *;

/*QUERY 5*/
UPDATE produtos  SET preco = 1899.00 WHERE nome = 'Cama de casal' RETURNING *;
/*QUERY 6*/ 
SELECT * FROM produtos;

/*QUERY 7*/
SELECT * FROM produtos WHERE preco >1000.00;

/*QUERY 8*/
SELECT * FROM produtos WHERE nome LIKE 'T%';

/*QUERY 9*/
SELECT * FROM produtos WHERE nome LIKE '%Gamer%';

/*QUERY 10*/
SELECT COUNT(*) FROM produtos;

/*QUERY 11*/
SELECT MAX(preco) FROM produtos;

/*QUERY 12*/
SELECT AVG(preco) FROM produtos;

/*QUERY 13*/
SELECT AVG(preco) FROM produtos WHERE nome LIKE 'M%';

/*QUERY 14*/
SELECT SUM(preco) FROM produtos;

/*QUERY 15*/
SELECT * FROM produtos ORDER BY nome;

/*QUERY 16*/
SELECT * FROM produtos ORDER BY preco DESC;

/*QUERY 17*/
SELECT LOWER(categoria), COUNT(*) contador_categoria FROM produtos GROUP BY LOWER(categoria);

/*QUERY 18*/
SELECT LOWER(categoria), AVG(preco) media_categoria FROM produtos GROUP BY LOWER(categoria);

/*QUERY 19*/
SELECT LOWER(categoria), MIN(preco) minimo_categoria FROM produtos GROUP BY LOWER(categoria);

/*QUERY 20*/
SELECT LOWER(categoria), COUNT(*) FROM produtos WHERE preco < 1000 GROUP BY LOWER(categoria);




-- Insira 3 classes salariais na tabela salario_classe
INSERT into salario_classe (id, salario, nivel)
VALUES
(1,1500,'Estagiário' ),
(2,2500,'Assistente'),
(3,3600,'Analista Junior'),
(4, 4500, 'Analista Pleno'),
(5, 5600, 'Analista Senior'),
(6, 8000, 'Especialista');

-- Insira 1 nova classe salarial, sem declarar o atributo id_salario
INSERT INTO salario_classe(salario, nivel)
VALUES
(13000, 'Coordenador'),
(15000, 'Gerente');

DELETE FROM salario_classe
WHERE id=9 OR id=10
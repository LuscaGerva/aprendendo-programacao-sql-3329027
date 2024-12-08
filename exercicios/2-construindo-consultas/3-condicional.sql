-- Escreva uma consulta que retorne o nome por extenso dos estados brasileiros
SELECT DISTINCT
Country AS Pais,
State AS Estado_Sigla,
CASE
WHEN State = 'SP' THEN 'SAO PAULO'
WHEN State = 'RJ' THEN 'RIO DE JANEIRO'
ELSE 'Estado Desconhecido'
END as Estado
FROM customers 
WHERE Country LIKE 'Brazil';

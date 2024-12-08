-- Desenvolva uma consulta para a tabela "customers" que retorne apenas 10 linhas
SELECT
CustomerId AS Id_Cliente,
FirstName AS NomeCliente,
Country AS pais
From customers
LIMIT 10;

-- Usando a consulta anterior, ordene a coluna "Country" de forma crescente e "FirstName" de forma decrescente
SELECT
CustomerId AS Id_Cliente,
FirstName AS NomeCliente,
Country AS pais
From customers
Order by 
pais Asc, 
NomeCliente Desc
LIMIT 10;

-- Continue usando a consulta anterior, dessa vez retorne 10 resultados, no entando ignore as 3 primeiras linhas
SELECT
CustomerId AS Id_Cliente,
FirstName AS NomeCliente,
Country AS pais
From customers
Order by pais Asc
LIMIT 10 OFFSET 3;
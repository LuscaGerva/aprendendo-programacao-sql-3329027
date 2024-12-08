-- Crie uma consulta usando as tabelas "invoices" e "customers" cujo o resultado seja o total de gastos por cliente
SELECT
cus.customerId AS Clienteid,
cus.FirstName AS Nomecliente,
SUM(Inv.Total) AS total_gasto
FROM
invoices as inv
INNER JOIN customers as cus on inv.CustomerId = cus.CustomerId
Group By Clienteid;

-- Na consulta anterior, insira um filtro para que apresente apenas os clientes que gastaram mais de R$30
SELECT
cus.customerId AS Clienteid,
cus.FirstName AS Nomecliente,
SUM(Inv.Total) AS total_gasto,
COUNT(Inv.Total) AS qnt_compras
FROM
invoices as inv
INNER JOIN customers as cus on inv.CustomerId = cus.CustomerId
Group By Clienteid
HAVING SUM(inv.Total) >= 30;

-- Na consulta anterior, insira uma coluna que informe a compra de maior valor feita por cada cliente
SELECT
cus.customerId AS Clienteid,
cus.FirstName AS Nomecliente,
SUM(Inv.Total) AS total_gasto,
COUNT(Inv.Total) AS qnt_compras,
MAX(Inv.Total) AS maior_compra,
MIN(Inv.Total) AS menor_compra
FROM
invoices as inv
INNER JOIN customers as cus on inv.CustomerId = cus.CustomerId
Group By Clienteid
HAVING SUM(inv.Total) >= 30;
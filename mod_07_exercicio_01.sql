/* 
FACTSALES

1. 

a) Faça um resumo da quantidade vendida (SalesQuantity) de acordo com o canal de vendas
(channelkey).

b) Faça um agrupamento mostrando a quantidade total vendida (SalesQuantity) e quantidade
total devolvida (Return Quantity) de acordo com o ID das lojas (StoreKey).

c) Faça um resumo do valor total vendido (SalesAmount) para cada canal de venda, mas apenas
para o ano de 2007.
*/

-- A
SELECT
	channelKey AS 'Canal de Vendas',
	SUM(SalesQuantity) AS 'Quantidade Vendida'
FROM 
	FactSales
GROUP BY 
	channelKey
ORDER BY channelKey ASC 

-- B
SELECT
	StoreKey,
	SUM(SalesQuantity) AS 'Quantidade Vendida',
	SUM(ReturnQuantity) AS 'Quantidade Devolvida'
FROM 
	FactSales
GROUP BY StoreKey
ORDER BY StoreKey ASC

-- C
SELECT
	channelKey AS 'Canal de Vendas',
	SUM(SalesAmount) AS 'Total Vendido'
FROM 
	FactSales
WHERE DateKey BETWEEN '01-01-2007' AND '31-12-2007'
GROUP BY channelKey
ORDER BY [Total Vendido] DESC


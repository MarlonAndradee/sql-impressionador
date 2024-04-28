/*
	FACTONLINESALES
	3. 
	a) Você deve fazer uma consulta à tabela FactOnlineSales e descobrir qual é o ID
	(CustomerKey) do cliente que mais realizou compras online (de acordo com a coluna
	SalesQuantity).

	b) Feito isso, faça um agrupamento de total vendido (SalesQuantity) por ID do produto
	e descubra quais foram os top 3 produtos mais comprados pelo cliente da letra a). */

SELECT DISTINCT -- A) A ID do cliente que mais realizou compras online é 19037DISTINCT 
	CustomerKey, 
	SUM(SalesQuantity) AS 'Qtd. Comprada'
FROM 
	FactOnlineSales
GROUP BY 
	CustomerKey
ORDER BY 
	SUM(SalesQuantity) DESC

SELECT TOP(3) -- B) Os top três mais comprados foram os productos com as chaves 2515, 2516 e 2506.
	ProductKey, 
	SUM(SalesQuantity) AS 'Qtd. comprada'
FROM
	FactOnlineSales
WHERE
	CustomerKey = 19037 
GROUP BY 
	ProductKey
ORDER BY 
	SUM(SalesQuantity) DESC
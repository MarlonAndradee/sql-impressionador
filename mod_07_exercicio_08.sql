/*8. Fa�a um agrupamento para descobrir a quantidade total de clientes e a m�dia salarial de
acordo com o seu n�vel escolar. Utilize a coluna Education da tabela DimCustomer para fazer
esse agrupamento.*/

SELECT * FROM DimCustomer

SELECT
	Education,
	COUNT(FirstName) AS 'ClientCount', 
	AVG(YearlyIncome) AS 'AverageSalary'
FROM 
	DimCustomer
WHERE FirstName IS NOT NULL
GROUP BY Education
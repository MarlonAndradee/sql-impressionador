/*8. Faça um agrupamento para descobrir a quantidade total de clientes e a média salarial de
acordo com o seu nível escolar. Utilize a coluna Education da tabela DimCustomer para fazer
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
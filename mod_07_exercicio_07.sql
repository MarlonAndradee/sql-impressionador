/* 7. Faça um agrupamento para saber o total de clientes de acordo com o Sexo e também a média
salarial de acordo com o Sexo. Corrija qualquer resultado “inesperado” com os seus
conhecimentos em SQL. */

SELECT * FROM DimCustomer

SELECT 
	COUNT(FirstName) AS 'ClientCount', 
	AVG(YearlyIncome) AS 'AverageSalary',
	Gender
FROM 
	DimCustomer
WHERE 
	GENDER IS NOT NULL
GROUP BY 
	Gender
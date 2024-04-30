/*DIMEMPLOYEE
9. Faça uma tabela resumo mostrando a quantidade total de funcionários de acordo com o
Departamento (DepartmentName). Importante: Você deverá considerar apenas os
funcionários ativos.*/

SELECT * FROM DimEmployee


SELECT 
	DepartmentName,
	COUNT(FirstName) AS 'EmployeeCount'
FROM
	DimEmployee
WHERE 
	EndDate IS NULL
GROUP BY
	DepartmentName
ORDER BY COUNT(FirstName) DESC

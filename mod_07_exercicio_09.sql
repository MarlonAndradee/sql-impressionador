/*DIMEMPLOYEE
9. Fa�a uma tabela resumo mostrando a quantidade total de funcion�rios de acordo com o
Departamento (DepartmentName). Importante: Voc� dever� considerar apenas os
funcion�rios ativos.*/

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
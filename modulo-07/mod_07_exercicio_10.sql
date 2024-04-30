/*10. Faça uma tabela resumo mostrando o total de VacationHours para cada cargo (Title). Você
deve considerar apenas as mulheres, dos departamentos de Production, Marketing,
Engineering e Finance, para os funcionários contratados entre os anos de 1999 e 2000.*/

SELECT DISTINCT DepartmentName FROM DimEmployee
ORDER BY DepartmentName ASC

SELECT 
	Title, 
	SUM(VacationHours) AS 'SumVacationHours'
FROM 
	DimEmployee
WHERE 
	GENDER = 'F' 
	AND DepartmentName IN ('Production', 'Marketing', 'Engineering', 'Finance') 
	AND HireDate BETWEEN '01-01-1999' AND '31-12-2000'
GROUP BY 
	Title

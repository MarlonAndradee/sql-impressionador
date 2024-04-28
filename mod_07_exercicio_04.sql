/*
DIMPRODUCT
4. a) Fa�a um agrupamento e descubra a quantidade total de produtos por marca.

b) Determine a m�dia do pre�o unit�rio (UnitPrice) para cada ClassName.

c) Fa�a um agrupamento de cores e descubra o peso total que cada cor de produto possui.
*/

SELECT * FROM DimProduct

SELECT -- A
	BrandName,
	COUNT(ProductName) AS 'Qtd. Por Marca'
FROM
	DimProduct
GROUP BY
	BrandName

SELECT -- B
	ClassName,
	AVG(UnitPrice) AS 'Preco Medio'
FROM
	DimProduct
GROUP BY
	ClassName

SELECT -- C
	ColorName,
	SUM(Weight) AS 'Peso Cor'
FROM 
	DimProduct
GROUP BY
	ColorName
ORDER BY SUM(Weight) DESC
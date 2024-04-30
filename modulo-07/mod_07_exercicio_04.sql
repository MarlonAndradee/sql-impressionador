/*
DIMPRODUCT
4. a) Faça um agrupamento e descubra a quantidade total de produtos por marca.

b) Determine a média do preço unitário (UnitPrice) para cada ClassName.

c) Faça um agrupamento de cores e descubra o peso total que cada cor de produto possui.
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

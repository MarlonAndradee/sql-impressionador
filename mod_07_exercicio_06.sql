/* 6. Você seria capaz de confirmar se todas as marcas dos produtos possuem à disposição todas as
16 opções de cores? */

SELECT DISTINCT ColorName FROM DimProduct

SELECT 
	BrandName, 
	COUNT(DISTINCT ColorName) 
FROM
	DimProduct
GROUP BY 
	BrandName
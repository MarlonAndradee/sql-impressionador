/* 6. Voc� seria capaz de confirmar se todas as marcas dos produtos possuem � disposi��o todas as
16 op��es de cores? */

SELECT DISTINCT ColorName FROM DimProduct

SELECT 
	BrandName, 
	COUNT(DISTINCT ColorName) 
FROM
	DimProduct
GROUP BY 
	BrandName
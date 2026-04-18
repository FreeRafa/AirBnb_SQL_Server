-- 🟠 Nível 3 — Intermédio Avançado (HAVING)

-- 21. Países com mais de 2 imóveis

SELECT Pais, COUNT(*) AS Total
FROM dbo.Airbnb
GROUP BY Pais
HAVING COUNT(*) > 2;

-- 22. Cidades com mais de 1 imóvel

SELECT Cidade, COUNT(*) AS Total
FROM dbo.Airbnb
GROUP BY Cidade
HAVING COUNT(*) > 1;

-- 23. Países com média de quartos superior a 2

SELECT Pais, AVG(NumeroDeQuartos) AS Media
FROM dbo.Airbnb
GROUP BY Pais
HAVING AVG(NumeroDeQuartos) > 2;

-- 24. Anos com mais de 2 imóveis listados

SELECT AnoListado, COUNT(*) AS Total
FROM dbo.Airbnb
GROUP BY AnoListado
HAVING COUNT(*) > 2;

-- 25. Cidades com média de quartos maior que 3

SELECT Cidade, AVG(NumeroDeQuartos) AS Media
FROM dbo.Airbnb
GROUP BY Cidade
HAVING AVG(NumeroDeQuartos) > 3;

-- 26. País com maior número de imóveis

SELECT TOP 1 Pais, COUNT(*) AS Total
FROM dbo.Airbnb
GROUP BY Pais
ORDER BY Total DESC;

-- 27. Cidade com menor número de imóveis

SELECT TOP 1 Cidade, COUNT(*) AS Total
FROM dbo.Airbnb
GROUP BY Cidade
ORDER BY Total ASC;

-- 28. Top 3 países com mais imóveis

SELECT TOP 3 Pais, COUNT(*) AS Total
FROM dbo.Airbnb
GROUP BY Pais
ORDER BY Total DESC;

-- 29. Top 5 cidades com mais quartos (soma)

SELECT TOP 5 Cidade, SUM(NumeroDeQuartos) AS TotalQuartos
FROM dbo.Airbnb
GROUP BY Cidade
ORDER BY TotalQuartos DESC;

-- 30. Ano com menor número de registos

SELECT TOP 1 AnoListado, COUNT(*) AS Total
FROM dbo.Airbnb
GROUP BY AnoListado
ORDER BY Total ASC;
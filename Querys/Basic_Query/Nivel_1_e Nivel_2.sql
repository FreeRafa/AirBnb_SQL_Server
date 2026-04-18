-- Nível 1 — Básico (Fundamentos)

-- 1. Listar todos os registos

SELECT * 
FROM dbo.Airbnb;

-- 2. Listar apenas Cidade e Pais

SELECT Cidade, Pais
FROM dbo.Airbnb;

-- 3. Listar imóveis localizados em Portugal

SELECT *
FROM dbo.Airbnb
WHERE Pais = 'Portugal';

-- 4. Listar imóveis com mais de 2 quartos

SELECT *
FROM dbo.Airbnb
WHERE NumeroDeQuartos > 2;

-- 5. Listar imóveis com exatamente 3 quartos

SELECT *
FROM dbo.Airbnb
WHERE NumeroDeQuartos = 3;

-- 6. Ordenar os imóveis por ano (mais recente primeiro)

SELECT *
FROM dbo.Airbnb
ORDER BY AnoListado DESC;

-- 7. Ordenar por número de quartos (crescente)

SELECT *
FROM dbo.Airbnb
ORDER BY NumeroDeQuartos ASC;

-- 8. Listar cidades únicas (DISTINCT)

SELECT DISTINCT Cidade
FROM dbo.Airbnb;

-- 9. Filtrar imóveis listados após 2020

SELECT *
FROM dbo.Airbnb
WHERE AnoListado > 2020;

-- 10. Listar imóveis de um país específico (ex: Espanha)

SELECT *
FROM dbo.Airbnb
WHERE Pais = 'Espanha';

-- 11. Contar o total de imóveis

SELECT COUNT(*) AS TotalImoveis
FROM dbo.Airbnb;

-- 12. Contar imóveis por país

SELECT Pais, COUNT(*) AS Total
FROM dbo.Airbnb
GROUP BY Pais;

-- 13. Contar imóveis por cidade

SELECT Cidade, COUNT(*) AS Total
FROM dbo.Airbnb
GROUP BY Cidade;

-- 14. Média de quartos por país

SELECT Pais, AVG(NumeroDeQuartos) AS MediaQuartos
FROM dbo.Airbnb
GROUP BY Pais;

-- 15. Média de quartos por cidade

SELECT Cidade, AVG(NumeroDeQuartos) AS MediaQuartos
FROM dbo.Airbnb
GROUP BY Cidade;

-- 16. Maior número de quartos registado

SELECT MAX(NumeroDeQuartos) AS MaxQuartos
FROM dbo.Airbnb;

-- 17. Menor número de quartos registado

SELECT MIN(NumeroDeQuartos) AS MinQuartos
FROM dbo.Airbnb;

-- 18. Soma total de quartos

SELECT SUM(NumeroDeQuartos) AS TotalQuartos
FROM dbo.Airbnb;

-- 19. Número de imóveis por ano

SELECT AnoListado, COUNT(*) AS Total
FROM dbo.Airbnb
GROUP BY AnoListado
ORDER BY AnoListado;

-- 20. Ano com mais registos

SELECT TOP 1 AnoListado, COUNT(*) AS Total
FROM dbo.Airbnb
GROUP BY AnoListado
ORDER BY Total DESC;
# Airbnb SQL Project

## 📌 Objetivo

Este projeto tem como objetivo praticar e consolidar conhecimentos em SQL utilizando o **SQL Server**, através da simulação de uma base de dados inspirada na plataforma Airbnb.

O foco principal está na criação de tabelas, inserção de dados e desenvolvimento de consultas SQL que representem cenários reais de análise de dados.

---

## 🛠️ Tecnologias Utilizadas

* SQL Server
* T-SQL (Transact-SQL)

---

## 🗂️ Estrutura do Projeto

```
airbnb-sql-project/
│
├── database/
│   ├── create_tables.sql
│   ├── insert_data.sql
│
├── queries/
│   ├── basic_queries.sql
│   ├── intermediate_queries.sql
│   ├── advanced_queries.sql
│
└── README.md
```

---

## 🧱 Estrutura da Base de Dados

### Tabela: `Airbnb`

| Coluna          | Tipo     | Descrição                      |
| --------------- | -------- | ------------------------------ |
| Id              | INT      | Identificador único (IDENTITY) |
| Cidade          | NVARCHAR | Cidade do imóvel               |
| Pais            | NVARCHAR | País do imóvel                 |
| NumeroDeQuartos | INT      | Número de quartos              |
| AnoListado      | INT      | Ano em que foi listado         |

---

## 📊 Exemplos de Consultas

### 🔹 Listar todos os registos

```sql
SELECT * FROM dbo.Airbnb;
```

### 🔹 Filtrar imóveis por país

```sql
SELECT * 
FROM dbo.Airbnb
WHERE Pais = 'Portugal';
```

### 🔹 Contar imóveis por país

```sql
SELECT Pais, COUNT(*) AS Total
FROM dbo.Airbnb
GROUP BY Pais;
```

### 🔹 Média de quartos por cidade

```sql
SELECT Cidade, AVG(NumeroDeQuartos) AS MediaQuartos
FROM dbo.Airbnb
GROUP BY Cidade;
```

---

## 📈 Objetivos de Aprendizagem

* Criar e estruturar bases de dados
* Utilizar comandos `SELECT`, `WHERE`, `GROUP BY`, `ORDER BY`
* Trabalhar com funções de agregação (`COUNT`, `AVG`, etc.)
* Escrever queries mais eficientes e organizadas
* Simular cenários reais de análise de dados

---

## 🚀 Próximos Passos

* Adicionar mais tabelas (ex: Utilizadores, Reservas)
* Trabalhar com `JOIN`
* Implementar filtros mais avançados (`HAVING`, subqueries)
* Criar relatórios mais completos

---

## 📎 Nota

Este projeto é de caráter académico e tem como objetivo o desenvolvimento de competências em SQL e modelação de dados.

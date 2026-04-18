# Airbnb SQL Project

## 📌 Objetivo

Este projeto tem como objetivo praticar e consolidar conhecimentos em SQL utilizando o SQL Server, através da simulação de uma base de dados inspirada na plataforma Airbnb.

O foco principal é desenvolver competências em:

* Criação e modelação de bases de dados
* Escrita de queries eficientes
* Análise de dados com SQL

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

## ▶️ Como Executar o Projeto

1. Criar uma base de dados no SQL Server
2. Executar o script:

   * `database/create_tables.sql`
3. Inserir os dados:

   * `database/insert_data.sql`
4. Executar as queries disponíveis na pasta `queries/`

---

## 🧱 Estrutura da Base de Dados

### Tabela: `Airbnb`

| Coluna          | Tipo          | Descrição                      |
| --------------- | ------------- | ------------------------------ |
| Id              | INT           | Identificador único (IDENTITY) |
| Cidade          | NVARCHAR(100) | Cidade do imóvel               |
| Pais            | NVARCHAR(100) | País do imóvel                 |
| NumeroDeQuartos | INT           | Número de quartos              |
| AnoListado      | INT           | Ano em que foi listado         |

---

## 📊 Cenário

Esta base de dados simula anúncios de imóveis do tipo Airbnb, permitindo análises como:

* Distribuição de imóveis por país
* Evolução de listagens ao longo dos anos
* Capacidade média dos imóveis

---

## 🧠 Níveis de Exercícios

* **Básico** → SELECT, WHERE, ORDER BY
* **Intermédio** → GROUP BY, funções agregadas
* **Avançado** → HAVING, subqueries, análises mais complexas

---

## 📊 Exemplos de Consultas

### 🔹 Listar todos os registos

```sql
SELECT * FROM dbo.Airbnb;
```

### 🔹 Filtrar imóveis por país

```sql
-- Imóveis localizados em Portugal
SELECT * 
FROM dbo.Airbnb
WHERE Pais = 'Portugal';
```

### 🔹 Contar imóveis por país

```sql
-- Número total de imóveis por país
SELECT Pais, COUNT(*) AS Total
FROM dbo.Airbnb
GROUP BY Pais;
```

### 🔹 Média de quartos por cidade

```sql
-- Média de quartos por cidade
SELECT Cidade, AVG(NumeroDeQuartos) AS MediaQuartos
FROM dbo.Airbnb
GROUP BY Cidade;
```

---

## 📈 Objetivos de Aprendizagem

* Criar e estruturar bases de dados relacionais
* Utilizar comandos SQL fundamentais e avançados
* Trabalhar com funções de agregação (`COUNT`, `AVG`, `SUM`, etc.)
* Desenvolver raciocínio analítico com dados
* Simular cenários reais de análise

---

## 🚀 Próximos Passos

* Adicionar novas tabelas (ex: Utilizadores, Reservas)
* Implementar relações entre tabelas (`JOIN`)
* Criar consultas mais avançadas (subqueries, views)
* Desenvolver relatórios analíticos

---

## 📎 Nota

Este projeto é de caráter académico e foi desenvolvido com o objetivo de evoluir competências em SQL e análise de dados.

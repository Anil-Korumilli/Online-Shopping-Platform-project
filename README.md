# Online Shopping Platform (PostgreSQL Project)

## 📌 Overview
This project is a database implementation of an **Online Shopping Platform** built using **PostgreSQL**.  
It manages customers, products, categories, orders, payments, carts, and employees.

## 📂 Project Structure
- `CREATE_DATABASE.sql` → PostgreSQL schema for all 10 tables
- `INSERT_QUERIES.sql` → CSV import commands for PostgreSQL
- `QUERY_SOLUTIONS1.sql` → Basic queries
- `QUERY_SOLUTIONS2.sql` → Advanced queries
- `categories.csv, customers.csv, ...` → Sample datasets (100–250 rows each)

## ⚙️ Tech Stack
- **PostgreSQL**
- **CSV datasets (Faker generated realistic data)**
- **SQL queries for analytics**

## 🚀 How to Run
1. Create database in PostgreSQL
   ```sql
   CREATE DATABASE online_shop;
   ```
2. Run schema file
   ```bash
   psql -d online_shop -f CREATE_DATABASE.sql
   ```
3. Import CSV data
   ```bash
   psql -d online_shop -f INSERT_QUERIES.sql
   ```
4. Run queries from `QUERY_SOLUTIONS1.sql` and `QUERY_SOLUTIONS2.sql`

## 📊 ER Diagram
The ER Diagram connects Customers, Orders, Products, Payments, Carts, and Employees.

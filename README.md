# Data-Analysis-Portfolio-projects

# 🍕 Pizza Sales End-to-End SQL Data Analysis

An end-to-end data analysis project using MySQL to evaluate operational performance, sales trends, and customer ordering behavior for a retail pizza chain.

---

## 📌 Project Overview
This project processes and analyzes real-world transactional data containing order details, pizza categories, pricing, and timestamps. The goal is to provide actionable business insights regarding revenue drivers, peak operational hours, and inventory movement using advanced SQL querying techniques.

---

## 🛠️ Tech Stack & Tools
* Database Management System: MySQL 8.0 / MySQL Workbench
* Language: SQL (ANSI SQL / MySQL dialect)
* Concepts Demonstrated: Aggregations (SUM, COUNT, AVG), Date/Time Parsing (STR_TO_DATE, DAYNAME, HOUR), Filtering & Sorting, Grouping & Aliasing, Limit Queries.

---

## 📊 Key Business Questions Solved
The SQL script addresses core operational and financial questions:

1. Overall Performance:
   * Total revenue generated and total distinct orders placed.
   * Average order value (AOV) and total pizzas sold.
   * Average pizzas per order.

2. Temporal & Operational Trends:
   * Daily Trend: Identification of peak order volume across days of the week to assist with staffing.
   * Hourly Trend: Hourly distribution of orders to pinpoint lunch and dinner rush hours.
   * Monthly Breakdown: Month-over-month performance variations.

3. Product & Category Performance:
   * Percentage of sales and quantity breakdown across pizza categories (Classic, Veggie, Supreme, Chicken).
   * Percentage of sales by pizza size (Regular, Medium, Large, XL, XXL).
   * Top 5 Best-Sellers: Top 5 pizzas by total quantity sold.
   * Bottom 5 Worst-Sellers: Lowest-performing items by sales volume for menu optimization.

---

## 💡 Key Insights & Findings
* Peak Days: Order volume surges significantly toward the weekend (Thursday through Saturday evenings).
* Peak Operational Hours: Highest footfall occurs between 12:00 PM – 1:00 PM (lunch rush) and 5:00 PM – 7:00 PM (dinner peak).
* Best-Performing Category: The Classic category consistently drives the highest order quantities, followed by Supreme.
* Size Preference: Large (L) size pizzas contribute the highest portion of total revenue.

---

## 🚀 How to Run the Project Locally

### 1. Prerequisites
Ensure you have MySQL Server and MySQL Workbench installed.

### 2. Setup the Database
Open MySQL Workbench and execute:
`sql
CREATE DATABASE IF NOT EXISTS pizza_db;
USE pizza_db;

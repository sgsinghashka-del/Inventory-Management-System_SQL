📦 Inventory Order Management Database System
📌 Project Overview
This project is a relational database system that simulates real-world supply chain and inventory operations, managing suppliers, products, warehouses, orders, and shipments. It also represents a core ERP module, showcasing how supply chain processes are integrated within a centralized system for efficient operations and decision-making.

🎯 Objective
To solve common supply chain problems such as:

Stock shortages
Overstocking
Poor supplier tracking
Inefficient order fulfillment
🧱 Database Structure
The database consists of the following tables:

Suppliers
Products
Warehouses
Inventory
PurchaseOrders
PurchaseOrderItems
SalesOrders
SalesOrderItems
Shipments
🛠 Tools Used
SQL (MySQL)
MySQL Workbench
Database Design (EER Diagram)
🗂 Project Structure
Supply-Chain-DBMS/

│ ├── README.md

│ └── Project overview, features, and documentation

│ ├── database/

│ ├── schema.sql

│ │ └── Database structure (CREATE DATABASE + TABLES) │ │ │ ├── data.sql

│ └── Sample data inserts for testing

│ ├── queries/

│ ├── analysis.sql

│ └── SQL queries for business insights and reporting

├── diagrams/

│ ├── erd.png

│ └── Entity Relationship Diagram showing database structure

│ ├── screenshots/

│ ├── top_selling_products.png

│ ├── revenue_by_category.png

│ ├── low_stock.png

│ ├── supplier_performance.png

│ ├── monthly_revenue.png

│ └── Query outputs and results visualized from SQL analysis

📊 Key SQL Analysis
🔹 Top Selling Products- identifies best-performing products based on total quantity sold.

🔹 Revenue by Category- analyzes total revenue generated across different product categories.

🔹 Stock Shortage Detection- detects products with low inventory levels to prevent stockouts.

🔹 Supplier Performance Ranking- evaluates supplier efficiency based on supply volume and order frequency.

🔹 Monthly Revenue Trends- tracks revenue performance over time to identify growth patterns.

🔹 Delivery Performance- measures delivery success rate and overall fulfillment efficiency.

🔹 Low Stock Alerts- flags items that require urgent restocking.

🖼 ERD Diagram
EER diagram real png
📸 Sample Query Outputs
Top Selling Products top selling products

Revenue by Category revenue by category

Low Stock Alert low stock alert

🚀 Business Impact
🔹 Strong revenue from the Kitchen category presents an opportunity to expand inventory and maximize sales

🔹 Revenue growth in April indicates a positive trend that can be leveraged through scaling and targeted promotions

🔹 Low stock levels across several products increase the risk of lost sales and require timely restocking strategies

🔹 Uneven supplier contributions highlight the need to strengthen high-performing supplier relationships and reassess underperforming ones

🔹 Delivery delays reveal inefficiencies in logistics that impact customer experience and require operational improvement

📌 Conclusion
This project demonstrates how a structured database can effectively manage and analyze supply chain operations. By integrating inventory, sales, supplier, and shipment data, it provides insights into demand, revenue, stock levels, and operational efficiency. The analysis highlights opportunities in inventory optimization, supplier performance, and delivery efficiency. Overall, it showcases practical SQL skills in database design and real-world supply chain analysis.

